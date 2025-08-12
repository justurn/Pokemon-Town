#!/usr/bin/env python3
"""
Add Pokemon Portrait Data to Basic Pokedex Scripts
Adds global.Dex_Portrait array assignments to SCR_Pokemon_Basic_Gen1 and SCR_Pokemon_Basic_Gen2
"""

import re
from pathlib import Path

def update_pokemon_basic_script(script_path, pokemon_range):
    """
    Update a Pokemon Basic script to include portrait data.
    
    Args:
        script_path: Path to the script file
        pokemon_range: tuple of (start_id, end_id) for Pokemon IDs
    """
    
    # Read the current script
    with open(script_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Update the header comment to mention portraits
    if "- Names and sprites" in content:
        content = content.replace(
            "- Names and sprites",
            "- Names, sprites, and portraits"
        )
    
    # Pattern to find Pokemon entries
    # Matches: global.Dex_Secondary_Types[ID] = "...";
    pattern = r'(global\.Dex_Secondary_Types\[(\d+)\]\s*=\s*"[^"]*";)'
    
    def add_portrait_line(match):
        full_line = match.group(1)
        pokemon_id = int(match.group(2))
        
        # Format Pokemon ID with leading zeros (e.g., 0001, 0025, 0151)
        padded_id = f"{pokemon_id:04d}"
        
        # Add portrait assignment after the secondary type line
        portrait_line = f"    global.Dex_Portrait[{pokemon_id}] = ICO_{padded_id};"
        
        return full_line + "\n" + portrait_line
    
    # Apply the pattern replacement
    updated_content = re.sub(pattern, add_portrait_line, content)
    
    # Write the updated script
    with open(script_path, 'w', encoding='utf-8') as f:
        f.write(updated_content)
    
    start_id, end_id = pokemon_range
    added_count = end_id - start_id + 1
    print(f"✅ Updated {script_path.name}: Added {added_count} portrait assignments (Pokemon #{start_id}-#{end_id})")

def main():
    # Define script paths
    project_dir = Path("Z:\Software Dev\POKEMON-2\Pokemon 2")
    
    gen1_script = project_dir / "scripts" / "SCR_Pokemon_Basic_Gen1" / "SCR_Pokemon_Basic_Gen1.gml"
    gen2_script = project_dir / "scripts" / "SCR_Pokemon_Basic_Gen2" / "SCR_Pokemon_Basic_Gen2.gml"
    
    # Check if we're in the workspace (use relative paths)
    if not gen1_script.exists():
        project_dir = Path("/workspace/project/Pokemon 2")
        gen1_script = project_dir / "scripts" / "SCR_Pokemon_Basic_Gen1" / "SCR_Pokemon_Basic_Gen1.gml" 
        gen2_script = project_dir / "scripts" / "SCR_Pokemon_Basic_Gen2" / "SCR_Pokemon_Basic_Gen2.gml"
    
    print("Adding Pokemon portrait data to Basic Pokedex scripts...")
    print("-" * 60)
    
    if gen1_script.exists():
        # Generation 1: Pokemon 1-151
        update_pokemon_basic_script(gen1_script, (1, 151))
    else:
        print(f"❌ Generation 1 script not found: {gen1_script}")
    
    if gen2_script.exists():
        # Generation 2: Pokemon 152-251  
        update_pokemon_basic_script(gen2_script, (152, 251))
    else:
        print(f"❌ Generation 2 script not found: {gen2_script}")
    
    print("-" * 60)
    print("✅ Portrait data integration complete!")
    print()
    print("Added portrait assignments in format:")
    print("    global.Dex_Portrait[ID] = ICO_XXXX;")
    print()
    print("Next steps:")
    print("1. Import the updated scripts into GameMaker Studio 2")
    print("2. Verify ICO_ sprite constants exist in your project")
    print("3. Test portrait display in your F-010 implementation")

if __name__ == "__main__":
    main()