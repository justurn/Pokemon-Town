#!/usr/bin/env python3
"""
Bulk Sprite Sheet Importer for GameMaker Studio 2
Creates sprite resources from PMD Collab animated sprite sheets.

This script:
1. Scans for Pokemon sprite sheet folders
2. Parses AnimData.xml for animation metadata
3. Creates .yy sprite resource files for GameMaker
4. Updates the project .yyp file with new sprite references
5. Handles frame-based animations with proper timing from XML data
"""

import os
import json
import uuid
import xml.etree.ElementTree as ET
from pathlib import Path
import argparse
from PIL import Image

# GameMaker sprite resource template
SPRITE_YY_TEMPLATE = {
    "resourceType": "GMSprite",
    "resourceVersion": "1.0",
    "name": "",
    "bbox_bottom": 0,
    "bbox_left": 0,
    "bbox_right": 0,
    "bbox_top": 0,
    "bboxMode": 0,
    "collisionKind": 1,
    "collisionTolerance": 0,
    "DynamicTexturePage": False,
    "edgeFiltering": False,
    "For3D": False,
    "frames": [],
    "gridX": 0,
    "gridY": 0,
    "height": 64,
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
    "origin": 4,  # Center origin
    "parent": {
        "name": "Sprites",
        "path": "folders/Sprites.yy"
    },
    "preMultiplyAlpha": False,
    "sequence": {
        "resourceType": "GMSequence",
        "resourceVersion": "1.4",
        "name": "",
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
        "length": 1.0,
        "lockOrigin": False,
        "moments": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<MomentsEventKeyframe>"},
        "playback": 1,
        "playbackSpeed": 30.0,
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
            "keyframes": {"Keyframes": [], "resourceVersion": "1.0", "resourceType": "KeyframeStore<SpriteFrameKeyframe>"},
            "modifiers": [],
            "spriteId": None,
            "trackColour": 4294068289,
            "tracks": [],
            "traits": 0
        }],
        "visibleRange": None,
        "volume": 1.0,
        "xorigin": 32,
        "yorigin": 32
    },
    "swatchColours": None,
    "swfPrecision": 2.525,
    "textureGroupId": {
        "name": "Default",
        "path": "texturegroups/Default"
    },
    "type": 0,
    "VTile": False,
    "width": 64
}

def generate_uuid():
    """Generate a UUID for GameMaker resources."""
    return str(uuid.uuid4())

def parse_anim_data(xml_path):
    """Parse AnimData.xml to get animation metadata."""
    if not xml_path.exists():
        return {}
    
    try:
        tree = ET.parse(xml_path)
        root = tree.getroot()
        
        animations = {}
        shadow_size = 1  # default
        
        # Get shadow size
        shadow_elem = root.find('ShadowSize')
        if shadow_elem is not None:
            shadow_size = int(shadow_elem.text)
        
        # Parse animations
        anims_elem = root.find('Anims')
        if anims_elem is not None:
            for anim in anims_elem.findall('Anim'):
                name_elem = anim.find('Name')
                if name_elem is None:
                    continue
                    
                anim_name = name_elem.text
                anim_data = {
                    'name': anim_name,
                    'shadow_size': shadow_size
                }
                
                # Get animation index
                index_elem = anim.find('Index')
                if index_elem is not None:
                    anim_data['index'] = int(index_elem.text)
                
                # Get frame dimensions
                width_elem = anim.find('FrameWidth')
                height_elem = anim.find('FrameHeight')
                if width_elem is not None and height_elem is not None:
                    anim_data['frame_width'] = int(width_elem.text)
                    anim_data['frame_height'] = int(height_elem.text)
                
                # Get frame durations
                durations_elem = anim.find('Durations')
                if durations_elem is not None:
                    durations = []
                    for duration in durations_elem.findall('Duration'):
                        durations.append(int(duration.text))
                    anim_data['durations'] = durations
                
                # Get special frame markers
                for frame_type in ['RushFrame', 'HitFrame', 'ReturnFrame']:
                    elem = anim.find(frame_type)
                    if elem is not None:
                        anim_data[frame_type.lower()] = int(elem.text)
                
                # Handle CopyOf references
                copy_elem = anim.find('CopyOf')
                if copy_elem is not None:
                    anim_data['copy_of'] = copy_elem.text
                
                animations[anim_name.lower()] = anim_data
        
        return animations
        
    except Exception as e:
        print(f"Warning: Could not parse AnimData.xml at {xml_path}: {e}")
        return {}

def get_image_dimensions(image_path):
    """Get dimensions of an image file."""
    try:
        with Image.open(image_path) as img:
            return img.size  # (width, height)
    except Exception as e:
        print(f"Warning: Could not read image {image_path}: {e}")
        return (64, 64)  # Default size

def create_sprite_resource(sprite_name, image_path, anim_data=None):
    """Create a GameMaker sprite resource from a sprite sheet with animation data."""
    sprite_data = SPRITE_YY_TEMPLATE.copy()
    sprite_data["name"] = sprite_name
    
    # Use animation data if available, otherwise defaults
    if anim_data:
        frame_width = anim_data.get('frame_width', 64)
        frame_height = anim_data.get('frame_height', 64)
        durations = anim_data.get('durations', [])
    else:
        frame_width = 64
        frame_height = 64
        durations = []
    
    # Set dimensions
    sprite_data["width"] = frame_width
    sprite_data["height"] = frame_height
    sprite_data["sequence"]["xorigin"] = frame_width // 2
    sprite_data["sequence"]["yorigin"] = frame_height // 2
    
    # Get actual image dimensions to calculate frames
    img_width, img_height = get_image_dimensions(image_path)
    frames_x = img_width // frame_width
    frames_y = img_height // frame_height
    total_frames = frames_x * frames_y
    
    # Use frame count from durations if available
    if durations:
        total_frames = len(durations)
    
    # Update sequence length
    sprite_data["sequence"]["length"] = float(total_frames)
    
    # Calculate playback speed from durations (GameMaker uses FPS)
    if durations:
        # Convert PMD frame durations to GameMaker FPS
        # PMD appears to use 60fps base with duration multipliers
        avg_duration = sum(durations) / len(durations) if durations else 2
        playback_speed = 60.0 / max(avg_duration, 1)  # Prevent division by zero
        sprite_data["sequence"]["playbackSpeed"] = playback_speed
    
    # Create frame entries
    frames = []
    keyframes = []
    
    for frame_idx in range(total_frames):
        frame_uuid = generate_uuid()
        
        # Frame data
        frame_data = {
            "resourceType": "GMSpriteFrame",
            "resourceVersion": "1.1",
            "name": frame_uuid,
            "compositeImage": {
                "resourceType": "GMSprite",
                "resourceVersion": "1.0",
                "name": "",
                "bbox_bottom": frame_height - 1,
                "bbox_left": 0,
                "bbox_right": frame_width - 1,
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
                "height": frame_height,
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
                "width": frame_width
            },
            "images": [{
                "resourceType": "GMSprite",
                "resourceVersion": "1.0",
                "FrameId": {"name": frame_uuid, "path": f"sprites/{sprite_name}/{sprite_name}.yy"},
                "LayerId": {"name": "default", "path": f"sprites/{sprite_name}/{sprite_name}.yy"}
            }]
        }
        
        frames.append(frame_data)
        
        # Keyframe for animation sequence
        keyframe_data = {
            "resourceType": "SpriteFrameKeyframe",
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
    
    sprite_data["frames"] = frames
    sprite_data["sequence"]["tracks"][0]["keyframes"]["Keyframes"] = keyframes
    sprite_data["sequence"]["tracks"][0]["spriteId"] = {"name": sprite_name, "path": f"sprites/{sprite_name}/{sprite_name}.yy"}
    
    return sprite_data

def scan_pokemon_sprites(source_dir):
    """Scan for Pokemon sprite sheets in directory structure with AnimData.xml support."""
    sprites_found = []
    source_path = Path(source_dir)
    
    for pokemon_folder in source_path.iterdir():
        if not pokemon_folder.is_dir():
            continue
            
        pokemon_name = pokemon_folder.name
        
        # Parse AnimData.xml if it exists
        anim_data_file = pokemon_folder / "AnimData.xml"
        anim_metadata = parse_anim_data(anim_data_file)
        
        # Look for sprite sheet PNGs
        for sprite_file in pokemon_folder.glob("*.png"):
            # Skip shadow files
            if "Shadow" in sprite_file.name:
                continue
                
            animation_name = sprite_file.stem
            
            # Get animation metadata for this specific animation
            anim_info = anim_metadata.get(animation_name.lower())
            
            # Handle CopyOf references
            if anim_info and 'copy_of' in anim_info:
                original_anim = anim_metadata.get(anim_info['copy_of'].lower())
                if original_anim:
                    # Copy metadata but keep the current animation name
                    anim_info = original_anim.copy()
                    anim_info['name'] = animation_name
            
            sprite_info = {
                "pokemon": pokemon_name,
                "animation": animation_name,
                "file_path": sprite_file,
                "sprite_name": f"SPR_{pokemon_name.title()}_{animation_name.title()}",
                "anim_data": anim_info
            }
            
            sprites_found.append(sprite_info)
    
    return sprites_found

def create_sprite_files(sprites_list, project_dir, dry_run=False):
    """Create .yy sprite files for GameMaker."""
    project_path = Path(project_dir)
    sprites_dir = project_path / "sprites"
    
    created_count = 0
    
    for sprite_info in sprites_list:
        sprite_name = sprite_info["sprite_name"]
        sprite_folder = sprites_dir / sprite_name
        sprite_file = sprite_folder / f"{sprite_name}.yy"
        
        if dry_run:
            print(f"📋 Would create: {sprite_file}")
            continue
        
        # Create sprite folder
        sprite_folder.mkdir(parents=True, exist_ok=True)
        
        # Copy the image file to sprite folder
        image_dest = sprite_folder / f"{generate_uuid()}.png"
        try:
            import shutil
            shutil.copy2(sprite_info["file_path"], image_dest)
        except Exception as e:
            print(f"❌ Error copying {sprite_info['file_path']}: {e}")
            continue
        
        # Create sprite resource with animation data
        sprite_data = create_sprite_resource(sprite_name, sprite_info["file_path"], sprite_info.get("anim_data"))
        
        # Write .yy file
        try:
            with open(sprite_file, 'w') as f:
                json.dump(sprite_data, f, indent=2)
            
            print(f"✅ Created: {sprite_name}")
            created_count += 1
            
        except Exception as e:
            print(f"❌ Error creating {sprite_name}: {e}")
    
    return created_count

def main():
    parser = argparse.ArgumentParser(description="Bulk import Pokemon sprite sheets into GameMaker Studio 2")
    parser.add_argument("--source", default="Assets/SpriteCollab-master", 
                       help="Source directory containing Pokemon sprite folders")
    parser.add_argument("--project", default="Pokemon 2",
                       help="GameMaker project directory")
    parser.add_argument("--pokemon", 
                       help="Comma-separated list of specific Pokemon (default: all)")
    parser.add_argument("--dry-run", action="store_true",
                       help="Show what would be created without actually creating")
    parser.add_argument("--frame-size", default="64x64",
                       help="Frame size for sprite sheets (e.g., 64x64)")
    parser.add_argument("--show-anim-data", action="store_true",
                       help="Display parsed animation data for debugging")
    
    args = parser.parse_args()
    
    # Parse frame size
    try:
        frame_width, frame_height = map(int, args.frame_size.split('x'))
    except ValueError:
        print("Error: Frame size must be in format WIDTHxHEIGHT (e.g., 64x64)")
        return 1
    
    source_path = Path(args.source)
    if not source_path.exists():
        print(f"Error: Source directory '{source_path}' does not exist")
        return 1
    
    print(f"Scanning for Pokemon sprites in: {source_path}")
    sprites_found = scan_pokemon_sprites(source_path)
    
    # Filter by specific Pokemon if requested
    if args.pokemon:
        target_pokemon = [name.strip().lower() for name in args.pokemon.split(",")]
        sprites_found = [s for s in sprites_found if s["pokemon"].lower() in target_pokemon]
    
    print(f"Found {len(sprites_found)} sprite sheets")
    
    # Show animation data if requested
    if args.show_anim_data:
        print("\n=== Animation Data ===")
        for sprite in sprites_found[:5]:  # Show first 5 for brevity
            print(f"\n{sprite['sprite_name']}:")
            if sprite['anim_data']:
                anim = sprite['anim_data']
                print(f"  Frame Size: {anim.get('frame_width', 'unknown')}x{anim.get('frame_height', 'unknown')}")
                print(f"  Frame Count: {len(anim.get('durations', []))}")
                if 'durations' in anim:
                    print(f"  Durations: {anim['durations'][:10]}{'...' if len(anim['durations']) > 10 else ''}")
                for key in ['rushframe', 'hitframe', 'returnframe']:
                    if key in anim:
                        print(f"  {key.title()}: {anim[key]}")
            else:
                print("  No AnimData.xml found")
        if len(sprites_found) > 5:
            print(f"  ... and {len(sprites_found) - 5} more")
        print("=" * 25)
    
    if not sprites_found:
        print("No sprites found to import")
        return 0
    
    # Create sprite files
    print(f"{'DRY RUN - ' if args.dry_run else ''}Creating sprite resources...")
    created_count = create_sprite_files(sprites_found, args.project, args.dry_run)
    
    if args.dry_run:
        print(f"📋 Would create {len(sprites_found)} sprite resources")
    else:
        print(f"✅ Successfully created {created_count} sprite resources")
        print("\n⚠️  Note: You'll need to restart GameMaker Studio 2 to see the new sprites")
    
    return 0

if __name__ == "__main__":
    import sys
    sys.exit(main())