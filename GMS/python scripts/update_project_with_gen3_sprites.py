#!/usr/bin/env python3
"""
Update GameMaker Project File with Generation 3 Pokemon Sprites
Adds all SPR_Gen3_XXX sprites to the Pokemon Town.yyp project file.

Usage:
    python3 update_project_with_gen3_sprites.py [project_file] [sprites_dir]
    
Arguments:
    project_file - Path to the .yyp project file (default: ../Pokemon Town.yyp)
    sprites_dir  - Directory containing sprite folders (default: ../sprites)
"""

import os
import sys
import json
import re
from pathlib import Path

def find_gen3_sprites(sprites_dir):
    """Find all Generation 3 sprite folders and return their info."""
    sprites_path = Path(sprites_dir)
    gen3_sprites = []
    
    for sprite_folder in sprites_path.iterdir():
        if sprite_folder.is_dir() and sprite_folder.name.startswith("SPR_Gen3_"):
            sprite_name = sprite_folder.name
            sprite_path = f"sprites/{sprite_name}/{sprite_name}.yy"
            gen3_sprites.append({
                "name": sprite_name,
                "path": sprite_path
            })
    
    # Sort by Pokemon number for consistent ordering
    gen3_sprites.sort(key=lambda x: int(x["name"].split("_")[-1]))
    return gen3_sprites

def clean_json_for_gamemaker(content):
    """Clean GameMaker JSON format to be parseable by Python's json module."""
    # Remove trailing commas before closing braces and brackets
    content = re.sub(r',(\s*[}\]])', r'\1', content)
    return content

def restore_gamemaker_format(content):
    """Restore GameMaker's trailing comma format."""
    # Add trailing commas back where GameMaker expects them
    content = re.sub(r'(\s*[}\]])', r',\1', content)
    # Fix double commas that might result
    content = re.sub(r',,', r',', content)
    # Remove comma before final closing brace/bracket
    content = re.sub(r',(\s*[}\]])$', r'\1', content, flags=re.MULTILINE)
    return content

def update_project_file(project_file_path, gen3_sprites):
    """Update the .yyp project file to include Generation 3 sprites."""
    
    # Read existing project file
    with open(project_file_path, 'r') as f:
        raw_content = f.read()
    
    # Clean for JSON parsing
    clean_content = clean_json_for_gamemaker(raw_content)
    project_data = json.loads(clean_content)
    
    # Check if Gen3_Pokemon folder exists in Folders section
    gen3_folder_exists = False
    for folder in project_data.get("Folders", []):
        if folder.get("name") == "Gen3_Pokemon":
            gen3_folder_exists = True
            break
    
    # Add Gen3_Pokemon folder if it doesn't exist
    if not gen3_folder_exists:
        gen3_folder = {
            "resourceType": "GMFolder",
            "resourceVersion": "1.0",
            "name": "Gen3_Pokemon",
            "folderPath": "folders/Sprites/Gen3_Pokemon.yy"
        }
        project_data["Folders"].append(gen3_folder)
        print(f"✅ Added Gen3_Pokemon folder to project")
    else:
        print(f"ℹ️  Gen3_Pokemon folder already exists")
    
    # Count existing Gen3 sprites in resources
    existing_gen3_count = 0
    for resource in project_data.get("resources", []):
        resource_name = resource["id"]["name"]
        if resource_name.startswith("SPR_Gen3_"):
            existing_gen3_count += 1
    
    print(f"ℹ️  Found {existing_gen3_count} existing Gen3 sprites in project file")
    print(f"ℹ️  Found {len(gen3_sprites)} Gen3 sprite folders on disk")
    
    # Add missing Gen3 sprites to resources
    existing_sprite_names = set()
    for resource in project_data.get("resources", []):
        existing_sprite_names.add(resource["id"]["name"])
    
    added_count = 0
    for sprite_info in gen3_sprites:
        sprite_name = sprite_info["name"]
        if sprite_name not in existing_sprite_names:
            resource_entry = {
                "id": {
                    "name": sprite_name,
                    "path": sprite_info["path"]
                }
            }
            project_data["resources"].append(resource_entry)
            added_count += 1
    
    # Write updated project file with GameMaker format
    updated_content = json.dumps(project_data, indent=2)
    gamemaker_content = restore_gamemaker_format(updated_content)
    
    with open(project_file_path, 'w') as f:
        f.write(gamemaker_content)
    
    return added_count

def main():
    # Parse command line arguments
    project_file = sys.argv[1] if len(sys.argv) > 1 else "../Pokemon Town.yyp"
    sprites_dir = sys.argv[2] if len(sys.argv) > 2 else "../sprites"
    
    # Convert to Path objects and resolve relative paths
    script_dir = Path(__file__).parent
    project_path = (script_dir / project_file).resolve()
    sprites_path = (script_dir / sprites_dir).resolve()
    
    # Validate paths
    if not project_path.exists():
        print(f"Error: Project file '{project_path}' does not exist")
        return 1
    
    if not sprites_path.exists():
        print(f"Error: Sprites directory '{sprites_path}' does not exist")
        return 1
    
    print(f"Project File: {project_path}")
    print(f"Sprites Directory: {sprites_path}")
    print("-" * 60)
    
    # Find Generation 3 sprites
    print("🔍 Scanning for Generation 3 sprites...")
    gen3_sprites = find_gen3_sprites(sprites_path)
    
    if not gen3_sprites:
        print("❌ No Generation 3 sprites found")
        return 1
    
    print(f"✅ Found {len(gen3_sprites)} Generation 3 sprites:")
    for sprite in gen3_sprites[:5]:  # Show first 5 examples
        print(f"   {sprite['name']}")
    if len(gen3_sprites) > 5:
        print(f"   ... and {len(gen3_sprites) - 5} more")
    print()
    
    # Backup original project file
    backup_path = project_path.with_suffix('.yyp.backup')
    if not backup_path.exists():
        import shutil
        shutil.copy2(project_path, backup_path)
        print(f"💾 Created backup: {backup_path.name}")
    
    # Update project file
    print("🔄 Updating project file...")
    added_count = update_project_file(project_path, gen3_sprites)
    
    print("-" * 60)
    print(f"✅ Successfully added {added_count} Generation 3 sprites to project")
    print(f"📁 Project file updated: {project_path}")
    
    if added_count > 0:
        print("\n📝 Next steps:")
        print("1. Open GameMaker Studio 2")
        print("2. Open the Pokemon Town project")
        print("3. Refresh the Asset Browser (F5) or restart GameMaker")
        print("4. Check the Gen3_Pokemon folder in the Sprites section")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())