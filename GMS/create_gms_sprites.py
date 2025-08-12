#!/usr/bin/env python3
"""
GameMaker Studio 2 Sprite Creator for Pokemon Icons
Creates GMS2 sprite resources from organized Pokemon icon PNG files.

Usage:
    python3 create_gms_sprites.py [icons_dir] [project_dir]
    
Arguments:
    icons_dir   - Directory containing organized icon PNG files (default: Z:\Software Dev\POKEMON-2\Assets\pokemon icons)
    project_dir - GameMaker project directory (default: Z:\Software Dev\POKEMON-2\project\Pokemon 2)
"""

import os
import sys
import json
import uuid
from pathlib import Path
from datetime import datetime

def generate_uuid():
    """Generate a new UUID for GameMaker resources."""
    return str(uuid.uuid4())

def create_sprite_yy(sprite_name, png_file_path, sprite_uuid, layer_uuid, image_uuid):
    """
    Create a GameMaker Studio 2 .yy sprite file content.
    
    Args:
        sprite_name: Name of the sprite (e.g., "ICO_0025")
        png_file_path: Path to the PNG file
        sprite_uuid: UUID for the sprite
        layer_uuid: UUID for the sprite layer
        image_uuid: UUID for the image
    """
    
    sprite_data = {
        "resourceType": "GMSprite",
        "resourceVersion": "1.0",
        "name": sprite_name,
        "bbox_bottom": 39,
        "bbox_left": 0,
        "bbox_right": 39,
        "bbox_top": 0,
        "bboxMode": 0,
        "collisionKind": 1,
        "collisionTolerance": 0,
        "DynamicTexturePage": False,
        "edgeFiltering": False,
        "For3D": False,
        "frames": [
            {
                "resourceType": "GMSpriteFrame",
                "resourceVersion": "1.0",
                "name": image_uuid,
                "compositeImage": {
                    "resourceType": "GMSpriteFramesContainer",
                    "resourceVersion": "1.0",
                    "FrameId": {
                        "name": image_uuid,
                        "path": f"sprites/{sprite_name}/{sprite_name}.yy"
                    },
                    "LayerId": None
                },
                "images": [
                    {
                        "resourceType": "GMSpriteFramesContainer", 
                        "resourceVersion": "1.0",
                        "FrameId": {
                            "name": image_uuid,
                            "path": f"sprites/{sprite_name}/{sprite_name}.yy"
                        },
                        "LayerId": {
                            "name": layer_uuid,
                            "path": f"sprites/{sprite_name}/{sprite_name}.yy"
                        }
                    }
                ]
            }
        ],
        "gridX": 0,
        "gridY": 0,
        "height": 40,
        "HTile": False,
        "layers": [
            {
                "resourceType": "GMImageLayer",
                "resourceVersion": "1.0",
                "name": layer_uuid,
                "blendMode": 0,
                "displayName": "default",
                "isLocked": False,
                "opacity": 100.0,
                "visible": True
            }
        ],
        "nineSlice": None,
        "origin": 4,  # Center origin
        "parent": {
            "name": "Pokemon_Icons",
            "path": "folders/Sprites/Pokemon_Icons.yy"
        },
        "preMultiplyAlpha": False,
        "sequence": {
            "resourceType": "GMSequence",
            "resourceVersion": "1.4",
            "name": sprite_name,
            "autoRecord": True,
            "backdropHeight": 768,
            "backdropImageOpacity": 0.5,
            "backdropImagePath": "",
            "backdropWidth": 1366,
            "backdropXOffset": 0.0,
            "backdropYOffset": 0.0,
            "events": {
                "resourceType": "KeyframeStore<MessageEventKeyframe>",
                "resourceVersion": "1.0",
                "Keyframes": []
            },
            "eventStubScript": None,
            "eventToFunction": {},
            "length": 1.0,
            "lockOrigin": False,
            "moments": {
                "resourceType": "KeyframeStore<MomentsEventKeyframe>",
                "resourceVersion": "1.0",
                "Keyframes": []
            },
            "playback": 1,
            "playbackSpeed": 30.0,
            "playbackSpeedType": 0,
            "showBackdrop": True,
            "showBackdropImage": False,
            "timeUnits": 1,
            "tracks": [
                {
                    "resourceType": "GMSpriteFramesTrack",
                    "resourceVersion": "1.0",
                    "name": "frames",
                    "builtinName": 0,
                    "events": [],
                    "inheritsTrackColour": True,
                    "interpolation": 1,
                    "isCreationTrack": False,
                    "keyframes": {
                        "resourceType": "KeyframeStore<SpriteFrameKeyframe>",
                        "resourceVersion": "1.0",
                        "Keyframes": [
                            {
                                "resourceType": "Keyframe<SpriteFrameKeyframe>",
                                "resourceVersion": "1.0",
                                "Channels": {
                                    "0": {
                                        "resourceType": "SpriteFrameKeyframe",
                                        "resourceVersion": "1.0",
                                        "Id": {
                                            "name": image_uuid,
                                            "path": f"sprites/{sprite_name}/{sprite_name}.yy"
                                        }
                                    }
                                },
                                "Disabled": False,
                                "id": generate_uuid(),
                                "IsCreationKey": False,
                                "Key": 0.0,
                                "Length": 1.0,
                                "Stretch": False
                            }
                        ]
                    },
                    "modifiers": [],
                    "spriteId": None,
                    "trackColour": 0,
                    "tracks": [],
                    "traits": 0
                }
            ],
            "visibleRange": None,
            "volume": 1.0,
            "xorigin": 20,
            "yorigin": 20
        },
        "swatchColours": None,
        "swfPrecision": 2.525,
        "textureGroupId": {
            "name": "Default",
            "path": "texturegroups/Default"
        },
        "type": 0,
        "VTile": False,
        "width": 40
    }
    
    return json.dumps(sprite_data, indent=2)

def create_folder_yy(folder_name, folder_uuid):
    """Create a GameMaker Studio 2 folder .yy file content."""
    
    folder_data = {
        "resourceType": "GMFolder",
        "resourceVersion": "1.0",
        "name": folder_name,
        "children": [],
        "filterType": "GMSprite",
        "folderPath": f"folders/Sprites/{folder_name}.yy",
        "isDefaultView": False,
        "localisedFolderName": ""
    }
    
    return json.dumps(folder_data, indent=2)

def main():
    # Parse command line arguments
    icons_dir = sys.argv[1] if len(sys.argv) > 1 else "Z:\Software Dev\POKEMON-2\Assets\pokemon icons"
    project_dir = sys.argv[2] if len(sys.argv) > 2 else "Z:\Software Dev\POKEMON-2\Pokemon 2"
    
    # Convert to Path objects
    icons_path = Path(icons_dir)
    project_path = Path(project_dir)
    sprites_path = project_path / "sprites"
    folders_path = project_path / "folders" / "Sprites"
    
    # Validate directories
    if not icons_path.exists():
        print(f"Error: Icons directory '{icons_path}' does not exist")
        return 1
    
    if not project_path.exists():
        print(f"Error: Project directory '{project_path}' does not exist")
        return 1
    
    # Create sprites directory if it doesn't exist
    sprites_path.mkdir(parents=True, exist_ok=True)
    folders_path.mkdir(parents=True, exist_ok=True)
    
    print(f"Icons Directory: {icons_path}")
    print(f"Project Directory: {project_path}")
    print(f"Sprites Directory: {sprites_path}")
    print("-" * 60)
    
    created_count = 0
    skipped_count = 0
    sprite_list = []
    
    # Create Pokemon_Icons folder if it doesn't exist
    pokemon_icons_folder_path = folders_path / "Pokemon_Icons.yy"
    if not pokemon_icons_folder_path.exists():
        folder_uuid = generate_uuid()
        folder_content = create_folder_yy("Pokemon_Icons", folder_uuid)
        
        try:
            with open(pokemon_icons_folder_path, 'w') as f:
                f.write(folder_content)
            print(f"✅ Created folder: Pokemon_Icons")
        except Exception as e:
            print(f"❌ Error creating Pokemon_Icons folder: {e}")
    
    # Process each PNG file in the icons directory
    for png_file in icons_path.glob("*.png"):
        if not png_file.name.startswith("ICO_"):
            continue
            
        sprite_name = png_file.stem  # Remove .png extension
        sprite_folder = sprites_path / sprite_name
        sprite_yy_file = sprite_folder / f"{sprite_name}.yy"
        
        # Create sprite directory
        sprite_folder.mkdir(exist_ok=True)
        
        # Generate UUIDs for this sprite
        sprite_uuid = generate_uuid()
        layer_uuid = generate_uuid()
        image_uuid = generate_uuid()
        
        # Copy PNG file to sprite directory
        sprite_png_dest = sprite_folder / f"{image_uuid}.png"
        
        try:
            import shutil
            shutil.copy2(png_file, sprite_png_dest)
            
            # Create .yy file
            sprite_content = create_sprite_yy(sprite_name, str(sprite_png_dest), sprite_uuid, layer_uuid, image_uuid)
            
            with open(sprite_yy_file, 'w') as f:
                f.write(sprite_content)
            
            print(f"✅ Created sprite: {sprite_name}")
            created_count += 1
            
            # Add to sprite list for project file updates
            sprite_list.append({
                "name": sprite_name,
                "path": f"sprites/{sprite_name}/{sprite_name}.yy"
            })
            
        except Exception as e:
            print(f"❌ Error creating sprite {sprite_name}: {e}")
            skipped_count += 1
    
    print("-" * 60)
    print(f"✅ Successfully created: {created_count} sprites")
    print(f"⚠️  Skipped: {skipped_count} sprites")
    print(f"📁 Sprites directory: {sprites_path}")
    
    if created_count > 0:
        print("\n📝 Next steps:")
        print("1. Open your GameMaker Studio 2 project")
        print("2. Go to File → Import → Resources")
        print("3. Select the newly created sprite .yy files")
        print("4. Or manually refresh the Asset Browser (F5)")
        print("\nAlternatively, you may need to manually add the sprites to your project's")
        print("main .yyp file for them to appear in the Asset Browser.")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())