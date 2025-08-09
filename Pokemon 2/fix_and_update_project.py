#!/usr/bin/env python3
"""
GameMaker Studio 2 Project File Fixer and Updater
Fixes JSON formatting issues and updates the .yyp project file to include Pokemon sprites.

Usage:
    python3 fix_and_update_project.py [project_dir]
    
Arguments:
    project_dir - GameMaker project directory (default: Z:\Software Dev\POKEMON-2\Pokemon 2)
"""

import os
import sys
import json
import uuid
import re
from pathlib import Path

def generate_uuid():
    """Generate a new UUID for GameMaker resources."""
    return str(uuid.uuid4())

def fix_json_format(json_content):
    """
    Fix common JSON formatting issues in GameMaker Studio files.
    - Remove trailing commas before } and ]
    - Fix other common JSON syntax issues
    """
    # Remove trailing commas before closing braces and brackets
    json_content = re.sub(r',\s*}', '}', json_content)
    json_content = re.sub(r',\s*]', ']', json_content)
    
    # Remove trailing commas at end of lines (more aggressive)
    json_content = re.sub(r',(\s*[}\]])', r'\1', json_content)
    
    return json_content

def backup_project_file(project_file):
    """Create a backup of the project file before modifying."""
    backup_file = project_file.with_suffix('.yyp.backup')
    import shutil
    shutil.copy2(project_file, backup_file)
    print(f"✅ Backup created: {backup_file}")
    return backup_file

def main():
    # Parse command line arguments
    project_dir = sys.argv[1] if len(sys.argv) > 1 else "Z:\Software Dev\POKEMON-2\Pokemon 2"
    
    # Convert to Path objects
    project_path = Path(project_dir)
    project_file = project_path / f"{project_path.name}.yyp"
    sprites_path = project_path / "sprites"
    
    # Validate directories
    if not project_path.exists():
        print(f"Error: Project directory '{project_path}' does not exist")
        return 1
    
    if not project_file.exists():
        print(f"Error: Project file '{project_file}' does not exist")
        return 1
    
    if not sprites_path.exists():
        print(f"Error: Sprites directory '{sprites_path}' does not exist")
        return 1
    
    print(f"Project Directory: {project_path}")
    print(f"Project File: {project_file}")
    print(f"Sprites Directory: {sprites_path}")
    print("-" * 60)
    
    # Create backup
    backup_file = backup_project_file(project_file)
    
    try:
        # Read the project file as raw text first
        with open(project_file, 'r', encoding='utf-8') as f:
            raw_content = f.read()
        
        print("📝 Fixing JSON formatting issues...")
        
        # Fix JSON formatting issues
        fixed_content = fix_json_format(raw_content)
        
        # Try to parse the fixed JSON
        try:
            project_data = json.loads(fixed_content)
            print("✅ JSON formatting fixed successfully")
        except json.JSONDecodeError as e:
            print(f"❌ Still have JSON errors after basic fixes: {e}")
            print("Let me try a more aggressive fix...")
            
            # More aggressive JSON fixing
            lines = fixed_content.split('\n')
            fixed_lines = []
            
            for i, line in enumerate(lines):
                # Remove trailing commas more aggressively
                if i < len(lines) - 1:  # Not the last line
                    next_line = lines[i + 1].strip()
                    if next_line.startswith('}') or next_line.startswith(']'):
                        line = re.sub(r',$', '', line.rstrip()) + '\n'
                
                fixed_lines.append(line)
            
            fixed_content = '\n'.join(fixed_lines)
            
            # Try parsing again
            project_data = json.loads(fixed_content)
            print("✅ JSON formatting fixed with aggressive cleaning")
        
        # Find existing Pokemon icon sprites
        existing_sprites = set()
        for resource in project_data.get("resources", []):
            if (resource.get("id", {}).get("path", "").startswith("sprites/ICO_") and 
                resource.get("id", {}).get("name", "").startswith("ICO_")):
                existing_sprites.add(resource["id"]["name"])
        
        print(f"Found {len(existing_sprites)} existing Pokemon icon sprites in project")
        
        # Find all ICO_ sprite folders
        sprite_folders = []
        for item in sprites_path.iterdir():
            if item.is_dir() and item.name.startswith("ICO_"):
                yy_file = item / f"{item.name}.yy"
                if yy_file.exists():
                    sprite_folders.append(item.name)
        
        print(f"Found {len(sprite_folders)} Pokemon icon sprite folders")
        
        # Find sprites that need to be added to project
        new_sprites = []
        for sprite_name in sprite_folders:
            if sprite_name not in existing_sprites:
                new_sprites.append(sprite_name)
        
        if not new_sprites:
            print("✅ All Pokemon icon sprites are already in the project file")
            # Still save the fixed JSON formatting
            with open(project_file, 'w', encoding='utf-8') as f:
                json.dump(project_data, f, indent=2)
            print("✅ Saved project file with fixed JSON formatting")
            return 0
        
        print(f"Adding {len(new_sprites)} new sprites to project file...")
        
        # Add new sprite resources to project
        if "resources" not in project_data:
            project_data["resources"] = []
        
        added_count = 0
        for sprite_name in new_sprites:
            # Create resource entry for the sprite
            sprite_resource = {
                "id": {
                    "name": sprite_name,
                    "path": f"sprites/{sprite_name}/{sprite_name}.yy"
                },
                "order": len(project_data["resources"])
            }
            
            project_data["resources"].append(sprite_resource)
            print(f"  ✅ Added: {sprite_name}")
            added_count += 1
        
        # Ensure Pokemon_Icons folder exists in project
        pokemon_icons_folder_exists = False
        for resource in project_data.get("resources", []):
            if (resource.get("id", {}).get("path") == "folders/Sprites/Pokemon_Icons.yy"):
                pokemon_icons_folder_exists = True
                break
        
        if not pokemon_icons_folder_exists:
            # Add Pokemon_Icons folder to project
            folder_resource = {
                "id": {
                    "name": "Pokemon_Icons",
                    "path": "folders/Sprites/Pokemon_Icons.yy"
                },
                "order": len(project_data["resources"])
            }
            project_data["resources"].append(folder_resource)
            print(f"  ✅ Added: Pokemon_Icons folder")
            added_count += 1
        
        # Write updated project file with proper JSON formatting
        with open(project_file, 'w', encoding='utf-8') as f:
            json.dump(project_data, f, indent=2)
        
        print("-" * 60)
        print(f"✅ Successfully fixed and updated project file!")
        print(f"✅ Fixed JSON formatting issues")
        print(f"✅ Added {added_count} resources to project")
        print(f"📁 Backup saved as: {backup_file.name}")
        print()
        print("Next steps:")
        print("1. Close GameMaker Studio 2 completely")
        print("2. Reopen your project")
        print("3. The Pokemon icon sprites should now appear in Asset Browser")
        print("4. Look under: Sprites → Pokemon_Icons")
        
        return 0
        
    except Exception as e:
        print(f"❌ Error fixing/updating project file: {e}")
        print(f"Project file backup available at: {backup_file}")
        return 1

if __name__ == "__main__":
    sys.exit(main())