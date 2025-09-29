#!/usr/bin/env python3
"""
Simple script to add Generation 3 Pokemon sprites to GameMaker project file.
Uses string manipulation instead of JSON parsing to avoid GameMaker format issues.
"""

import os
import sys
from pathlib import Path

def find_gen3_sprites(sprites_dir):
    """Find all Generation 3 sprite folders."""
    sprites_path = Path(sprites_dir)
    gen3_sprites = []
    
    for sprite_folder in sprites_path.iterdir():
        if sprite_folder.is_dir() and sprite_folder.name.startswith("SPR_Gen3_"):
            sprite_name = sprite_folder.name
            gen3_sprites.append(sprite_name)
    
    # Sort by Pokemon number
    gen3_sprites.sort(key=lambda x: int(x.split("_")[-1]))
    return gen3_sprites

def add_sprites_to_project(project_file_path, gen3_sprites):
    """Add Gen3 sprites to project file using string manipulation."""
    
    # Read the project file
    with open(project_file_path, 'r') as f:
        content = f.read()
    
    # Check if Gen3_Pokemon folder already exists
    if '"Gen3_Pokemon"' not in content:
        # Find the Folders section and add Gen3_Pokemon folder
        folders_section = content.find('"Folders": [')
        if folders_section != -1:
            # Find the end of Folders array
            folder_insert_pos = content.find('],', folders_section)
            if folder_insert_pos != -1:
                # Insert the Gen3_Pokemon folder entry
                gen3_folder_entry = '    {"resourceType":"GMFolder","resourceVersion":"1.0","name":"Gen3_Pokemon","folderPath":"folders/Sprites/Gen3_Pokemon.yy",},\n  '
                content = content[:folder_insert_pos] + gen3_folder_entry + content[folder_insert_pos:]
                print("✅ Added Gen3_Pokemon folder")
    else:
        print("ℹ️  Gen3_Pokemon folder already exists")
    
    # Find the resources section
    resources_section = content.find('"resources": [')
    if resources_section == -1:
        print("❌ Could not find resources section")
        return 0
    
    # Check how many Gen3 sprites are already in the file
    existing_count = content.count('SPR_Gen3_')
    print(f"ℹ️  Found {existing_count} existing Gen3 sprites in project")
    
    if existing_count > 0:
        print("ℹ️  Gen3 sprites already added to project file")
        return 0
    
    # Find the end of resources array
    resource_insert_pos = content.find('],', resources_section)
    if resource_insert_pos == -1:
        print("❌ Could not find end of resources section")
        return 0
    
    # Build Gen3 sprite entries
    gen3_entries = []
    for sprite_name in gen3_sprites:
        sprite_path = f"sprites/{sprite_name}/{sprite_name}.yy"
        entry = f'    {{"id":{{"name":"{sprite_name}","path":"{sprite_path}",}},}},'
        gen3_entries.append(entry)
    
    # Insert all Gen3 sprite entries
    gen3_block = '\n' + '\n'.join(gen3_entries) + '\n  '
    content = content[:resource_insert_pos] + gen3_block + content[resource_insert_pos:]
    
    # Write the updated file
    with open(project_file_path, 'w') as f:
        f.write(content)
    
    return len(gen3_sprites)

def main():
    # Set up paths
    script_dir = Path(__file__).parent
    project_path = script_dir / ".." / "Pokemon Town.yyp"
    sprites_path = script_dir / ".." / "sprites"
    
    print(f"Project File: {project_path.resolve()}")
    print(f"Sprites Directory: {sprites_path.resolve()}")
    print("-" * 60)
    
    # Find Gen3 sprites
    gen3_sprites = find_gen3_sprites(sprites_path)
    print(f"✅ Found {len(gen3_sprites)} Generation 3 sprites")
    
    if not gen3_sprites:
        print("❌ No Generation 3 sprites found")
        return 1
    
    # Create backup if it doesn't exist
    backup_path = project_path.with_suffix('.yyp.backup2')
    if not backup_path.exists():
        import shutil
        shutil.copy2(project_path, backup_path)
        print(f"💾 Created backup: {backup_path.name}")
    
    # Add sprites to project
    added_count = add_sprites_to_project(project_path, gen3_sprites)
    
    print("-" * 60)
    if added_count > 0:
        print(f"✅ Successfully added {added_count} Generation 3 sprites to project")
        print("\n📝 Next steps:")
        print("1. Open GameMaker Studio 2")
        print("2. Open the Pokemon Town project") 
        print("3. The Gen3 sprites should appear in the Asset Browser")
    else:
        print("ℹ️  No sprites were added (may already exist)")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())