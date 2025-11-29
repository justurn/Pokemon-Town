#!/usr/bin/env python3
"""Find and add all missing Gen 3 sprites to project file"""

import os

# Find all Gen 3 sprites that exist in the sprites directory
sprites_dir = "/workspace/project/GMS/sprites"
existing_gen3_sprites = []

for item in os.listdir(sprites_dir):
    if item.startswith("SPR_") and os.path.isdir(os.path.join(sprites_dir, item)):
        # Skip Gen 1 and Gen 2 sprites (rough check)
        sprite_path = os.path.join(sprites_dir, item)
        if os.path.exists(sprite_path):
            existing_gen3_sprites.append(item)

# Read current project file to see what's already registered
project_file = "/workspace/project/GMS/Pokemon Town.yyp"
with open(project_file, 'r') as f:
    content = f.read()

# Find sprites already registered
registered_sprites = []
for sprite in existing_gen3_sprites:
    if f'"{sprite}"' in content:
        registered_sprites.append(sprite)

# Find missing sprites
missing_sprites = []
for sprite in existing_gen3_sprites:
    if sprite not in registered_sprites:
        missing_sprites.append(sprite)

print(f"Found {len(existing_gen3_sprites)} Gen 3 Pokemon sprites")
print(f"Already registered: {len(registered_sprites)}")
print(f"Missing: {len(missing_sprites)}")

if missing_sprites:
    print("\nMissing sprites:")
    for sprite in sorted(missing_sprites):
        print(f"  {sprite}")

# Create the entries to add
if missing_sprites:
    entries_to_add = []
    for sprite in sorted(missing_sprites):
        entry = f'    {{"id":{{"name":"{sprite}","path":"sprites/{sprite}/{sprite}.yy",}},}},'
        entries_to_add.append(entry)
    
    print(f"\nEntries to add ({len(entries_to_add)}):")
    for entry in entries_to_add:
        print(entry)