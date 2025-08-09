#!/usr/bin/env python3
"""
PMD Collab Sprite Organizer for GameMaker Studio 2
Copies and renames Pokemon sprite files from PMD Collab folder structure
to GameMaker-friendly naming convention.

Usage:
    python3 organize_pokemon_icons.py [source_dir] [output_dir] [expression]
    
Arguments:
    source_dir  - Directory containing Pokemon folders (default: ../project/Assets/SpriteCollab-master)
    output_dir  - Output directory for renamed sprites (default: ../project/Assets/Pokemon_Icons)
    expression  - Expression to copy (default: Normal)
"""

import os
import shutil
import sys
from pathlib import Path

def find_expression_file(portrait_base_dir, pokemon_id, expression):
    """
    Find expression file in PMD Collab structure.
    Structure: portrait/[pokemon_id]/[Expression].png
    
    Args:
        portrait_base_dir: Path to the 'portrait' directory
        pokemon_id: Pokemon ID (e.g., "0025" for Pikachu)
        expression: Expression name (e.g., "Normal")
    """
    expression_filename = f"{expression}.png"
    portrait_file = portrait_base_dir / pokemon_id / expression_filename
    
    if portrait_file.exists():
        return portrait_file
    
    return None

def main():
    # Parse command line arguments
    source_dir = sys.argv[1] if len(sys.argv) > 1 else "Z:\Software Dev\POKEMON-2\Assets\SpriteCollab-master"
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "Z:\Software Dev\POKEMON-2\Assets\pokemon icons"
    expression = sys.argv[3] if len(sys.argv) > 3 else "Normal"
    
    # Convert to Path objects
    source_path = Path(source_dir)
    output_path = Path(output_dir)
    portrait_path = source_path / "portrait"
    
    # Validate source directory and portrait subdirectory
    if not source_path.exists():
        print(f"Error: Source directory '{source_path}' does not exist")
        return 1
    
    if not portrait_path.exists():
        print(f"Error: Portrait directory '{portrait_path}' does not exist")
        return 1
    
    # Create output directory if it doesn't exist
    output_path.mkdir(parents=True, exist_ok=True)
    
    print(f"Source: {source_path}")
    print(f"Portrait Directory: {portrait_path}")
    print(f"Output: {output_path}")
    print(f"Expression: {expression}")
    print("-" * 50)
    
    copied_count = 0
    skipped_count = 0
    
    # Process each Pokemon ID folder in portrait directory
    for pokemon_folder in portrait_path.iterdir():
        if not pokemon_folder.is_dir():
            continue
            
        pokemon_id = pokemon_folder.name
        
        # Look for the specified expression file in PMD Collab structure
        expression_file = find_expression_file(portrait_path, pokemon_id, expression)
        
        if expression_file is None:
            print(f"⚠️  Skipped Pokemon #{pokemon_id}: {expression}.png not found")
            skipped_count += 1
            continue
        
        # Create GameMaker-friendly filename using Pokemon ID
        # Format: ICO_XXXX.png where XXXX is the Pokemon ID
        output_filename = f"ICO_{pokemon_id}.png"
        output_file = output_path / output_filename
        
        try:
            # Copy the file
            shutil.copy2(expression_file, output_file)
            print(f"✅ Copied Pokemon #{pokemon_id}/{expression}.png -> {output_filename}")
            copied_count += 1
            
        except Exception as e:
            print(f"❌ Error copying Pokemon #{pokemon_id}: {e}")
            skipped_count += 1
    
    print("-" * 50)
    print(f"✅ Successfully copied: {copied_count} files")
    print(f"⚠️  Skipped: {skipped_count} files")
    print(f"📁 Output directory: {output_path}")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())