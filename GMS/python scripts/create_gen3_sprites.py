#!/usr/bin/env python3
"""
GameMaker Studio 2 Generation 3 Pokemon Sprite Creator
Creates GMS2 sprite resources from Generation 3 Pokemon GIF files.

This script:
1. Converts GIF files to PNG format for GameMaker compatibility
2. Creates sprite resources with SPR_Gen3_XXX naming convention
3. Generates proper .yy sprite files for GameMaker Studio 2
4. Handles animated GIF sprites with frame extraction

Usage:
    python3 create_gen3_sprites.py [sprites_dir] [project_dir]
    
Arguments:
    sprites_dir - Directory containing Pokemon GIF files (default: ../Assets/gen3-sprites)
    project_dir - GameMaker project directory (default: ../Pokemon 2)
"""

import os
import sys
import json
import uuid
import shutil
from pathlib import Path
from PIL import Image

def generate_uuid():
    """Generate a new UUID for GameMaker resources."""
    return str(uuid.uuid4())

def convert_gif_to_png(gif_path, output_dir):
    """
    Convert GIF to PNG, extracting all frames if animated.
    Returns list of PNG file paths created.
    """
    png_files = []
    
    try:
        with Image.open(gif_path) as img:
            # Check if animated
            if hasattr(img, 'n_frames') and img.n_frames > 1:
                # Extract all frames for animated GIF
                for frame_idx in range(img.n_frames):
                    img.seek(frame_idx)
                    # Convert to RGBA to handle transparency
                    frame = img.convert('RGBA')
                    
                    frame_filename = f"frame_{frame_idx:02d}.png"
                    frame_path = output_dir / frame_filename
                    frame.save(frame_path, "PNG")
                    png_files.append(frame_path)
            else:
                # Single frame GIF, convert directly
                frame = img.convert('RGBA')
                png_path = output_dir / "frame_00.png"
                frame.save(png_path, "PNG")
                png_files.append(png_path)
                
    except Exception as e:
        print(f"❌ Error converting {gif_path}: {e}")
        return []
    
    return png_files

def create_sprite_yy(sprite_name, png_files, sprite_width=64, sprite_height=64):
    """
    Create a GameMaker Studio 2 .yy sprite file content for Generation 3 Pokemon.
    
    Args:
        sprite_name: Name of the sprite (e.g., "SPR_Gen3_252")
        png_files: List of PNG file paths for frames
        sprite_width: Width of sprite frames
        sprite_height: Height of sprite frames
    """
    
    # Create frame data for each PNG
    frames = []
    keyframes = []
    
    for frame_idx, png_file in enumerate(png_files):
        frame_uuid = generate_uuid()
        layer_uuid = generate_uuid()
        
        frame_data = {
            "resourceType": "GMSpriteFrame",
            "resourceVersion": "1.1",
            "name": frame_uuid,
            "compositeImage": {
                "resourceType": "GMSprite",
                "resourceVersion": "1.0",
                "name": "",
                "bbox_bottom": sprite_height - 1,
                "bbox_left": 0,
                "bbox_right": sprite_width - 1,
                "bbox_top": 0,
                "bboxMode": 0,
                "collisionKind": 1,
                "collisionTolerance": 0,
                "DynamicTexturePage": False,
                "edgeFiltering": False,
                "For3D": False,
                "frames": [{
                    "resourceType": "GMSpriteFrame",
                    "resourceVersion": "1.1",
                    "name": frame_uuid
                }],
                "gridX": 0,
                "gridY": 0,
                "height": sprite_height,
                "HTile": False,
                "layers": [{
                    "resourceType": "GMImageLayer",
                    "resourceVersion": "1.0",
                    "name": layer_uuid,
                    "blendMode": 0,
                    "displayName": "default",
                    "isLocked": False,
                    "opacity": 100.0,
                    "visible": True
                }],
                "nineSlice": None,
                "origin": 0,
                "parent": {"name": sprite_name, "path": f"sprites/{sprite_name}/{sprite_name}.yy"},
                "preMultiplyAlpha": False,
                "sequence": {
                    "resourceType": "GMSequence",
                    "resourceVersion": "1.4",
                    "name": frame_uuid,
                    "timeUnits": 1,
                    "playback": 1,
                    "playbackSpeed": 30.0,
                    "playbackSpeedType": 0,
                    "autoRecord": True,
                    "length": 1.0,
                    "events": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<MessageEventKeyframe>"},
                    "moments": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<MomentsEventKeyframe>"},
                    "tracks": [],
                    "visibleRange": None,
                    "lockOrigin": False,
                    "showBackdrop": True,
                    "showBackdropImage": False,
                    "backdropWidth": 1366,
                    "backdropHeight": 768,
                    "backdropXOffset": 0.0,
                    "backdropYOffset": 0.0,
                    "backdropImagePath": "",
                    "backdropImageOpacity": 0.5,
                    "volume": 1.0,
                    "xorigin": 0,
                    "yorigin": 0
                },
                "swatchColours": None,
                "swfPrecision": 2.525,
                "textureGroupId": {"name": "Default", "path": "texturegroups/Default"},
                "type": 0,
                "VTile": False,
                "width": sprite_width
            },
            "images": [{
                "resourceType": "GMSprite",
                "resourceVersion": "1.0",
                "FrameId": {"name": frame_uuid, "path": f"sprites/{sprite_name}/{sprite_name}.yy"},
                "LayerId": {"name": layer_uuid, "path": f"sprites/{sprite_name}/{sprite_name}.yy"}
            }]
        }
        
        frames.append(frame_data)
        
        # Create keyframe for animation sequence
        keyframe_data = {
            "resourceType": "Keyframe<SpriteFrameKeyframe>",
            "resourceVersion": "1.0",
            "Channels": {
                "0": {
                    "resourceType": "SpriteFrameKeyframe",
                    "resourceVersion": "1.0",
                    "Id": {"name": frame_uuid, "path": f"sprites/{sprite_name}/{sprite_name}.yy"}
                }
            },
            "Disabled": False,
            "id": generate_uuid(),
            "IsCreationKey": False,
            "Key": float(frame_idx),
            "Length": 1.0,
            "Stretch": False
        }
        keyframes.append(keyframe_data)
    
    # Main sprite data structure
    sprite_data = {
        "resourceType": "GMSprite",
        "resourceVersion": "1.0",
        "name": sprite_name,
        "bbox_bottom": sprite_height - 1,
        "bbox_left": 0,
        "bbox_right": sprite_width - 1,
        "bbox_top": 0,
        "bboxMode": 0,
        "collisionKind": 1,
        "collisionTolerance": 0,
        "DynamicTexturePage": False,
        "edgeFiltering": False,
        "For3D": False,
        "frames": frames,
        "gridX": 0,
        "gridY": 0,
        "height": sprite_height,
        "HTile": False,
        "layers": [{
            "resourceType": "GMImageLayer",
            "resourceVersion": "1.0",
            "name": "default",
            "blendMode": 0,
            "displayName": "default",
            "isLocked": False,
            "opacity": 100.0,
            "visible": True
        }],
        "nineSlice": None,
        "origin": 4,  # Center origin for Pokemon sprites
        "parent": {
            "name": "Gen3_Pokemon",
            "path": "folders/Sprites/Gen3_Pokemon.yy"
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
            "events": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<MessageEventKeyframe>"},
            "eventStubScript": None,
            "eventToFunction": {},
            "length": float(len(frames)),
            "lockOrigin": False,
            "moments": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<MomentsEventKeyframe>"},
            "playback": 1,
            "playbackSpeed": 8.0,  # Slower playback for Pokemon animations
            "playbackSpeedType": 0,
            "showBackdrop": True,
            "showBackdropImage": False,
            "timeUnits": 1,
            "tracks": [{
                "resourceType": "GMSpriteFramesTrack",
                "resourceVersion": "1.0",
                "name": "frames",
                "builtinName": 0,
                "events": [],
                "inheritsTrackColour": True,
                "interpolation": 1,
                "isCreationTrack": False,
                "keyframes": {"Keyframes": keyframes, "resourceVersion": "1.0", "resourceType": "KeyframeStore<SpriteFrameKeyframe>"},
                "modifiers": [],
                "spriteId": None,
                "trackColour": 4294068289,
                "tracks": [],
                "traits": 0
            }],
            "visibleRange": None,
            "volume": 1.0,
            "xorigin": sprite_width // 2,
            "yorigin": sprite_height // 2
        },
        "swatchColours": None,
        "swfPrecision": 2.525,
        "textureGroupId": {"name": "Default", "path": "texturegroups/Default"},
        "type": 0,
        "VTile": False,
        "width": sprite_width
    }
    
    return json.dumps(sprite_data, indent=2)

def create_folder_yy(folder_name):
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
    sprites_dir = sys.argv[1] if len(sys.argv) > 1 else "../Assets/gen3-sprites"
    project_dir = sys.argv[2] if len(sys.argv) > 2 else "../Pokemon 2"
    
    # Convert to Path objects and resolve relative paths
    script_dir = Path(__file__).parent
    sprites_path = (script_dir / sprites_dir).resolve()
    project_path = (script_dir / project_dir).resolve()
    
    sprites_output_path = project_path / "sprites"
    folders_path = project_path / "folders" / "Sprites"
    
    # Validate directories
    if not sprites_path.exists():
        print(f"Error: Sprites directory '{sprites_path}' does not exist")
        return 1
    
    if not project_path.exists():
        print(f"Error: Project directory '{project_path}' does not exist")
        return 1
    
    # Create necessary directories
    sprites_output_path.mkdir(parents=True, exist_ok=True)
    folders_path.mkdir(parents=True, exist_ok=True)
    
    print(f"Sprites Directory: {sprites_path}")
    print(f"Project Directory: {project_path}")
    print(f"Output Sprites Directory: {sprites_output_path}")
    print("-" * 60)
    
    # Create Gen3_Pokemon folder if it doesn't exist
    gen3_folder_path = folders_path / "Gen3_Pokemon.yy"
    if not gen3_folder_path.exists():
        folder_content = create_folder_yy("Gen3_Pokemon")
        try:
            with open(gen3_folder_path, 'w') as f:
                f.write(folder_content)
            print(f"✅ Created folder: Gen3_Pokemon")
        except Exception as e:
            print(f"❌ Error creating Gen3_Pokemon folder: {e}")
    
    created_count = 0
    skipped_count = 0
    sprite_list = []
    
    # Process Generation 3 Pokemon (252-386)
    for pokemon_id in range(252, 387):
        gif_file = sprites_path / f"{pokemon_id}.gif"
        
        if not gif_file.exists():
            print(f"⚠️  Skipped Pokemon #{pokemon_id}: GIF file not found")
            skipped_count += 1
            continue
        
        sprite_name = f"SPR_Gen3_{pokemon_id}"
        sprite_folder = sprites_output_path / sprite_name
        sprite_yy_file = sprite_folder / f"{sprite_name}.yy"
        
        # Create sprite directory
        sprite_folder.mkdir(exist_ok=True)
        
        try:
            # Convert GIF to PNG frames
            print(f"🔄 Processing Pokemon #{pokemon_id}...")
            png_files = convert_gif_to_png(gif_file, sprite_folder)
            
            if not png_files:
                print(f"❌ Failed to convert Pokemon #{pokemon_id}")
                skipped_count += 1
                continue
            
            # Create .yy sprite file
            sprite_content = create_sprite_yy(sprite_name, png_files)
            
            with open(sprite_yy_file, 'w') as f:
                f.write(sprite_content)
            
            print(f"✅ Created sprite: {sprite_name} ({len(png_files)} frames)")
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
    print(f"📁 Sprites directory: {sprites_output_path}")
    
    if created_count > 0:
        print("\n📝 Next steps:")
        print("1. Open your GameMaker Studio 2 project")
        print("2. Refresh the Asset Browser (F5) or restart GameMaker")
        print("3. The sprites should appear in the Gen3_Pokemon folder")
        print("4. Update sprite constants in your GML scripts")
        
        print(f"\n📋 Generated sprite constants (for reference):")
        for sprite in sprite_list[:5]:  # Show first 5 examples
            print(f"   {sprite['name']}")
        if len(sprite_list) > 5:
            print(f"   ... and {len(sprite_list) - 5} more")
    
    return 0

if __name__ == "__main__":
    sys.exit(main())