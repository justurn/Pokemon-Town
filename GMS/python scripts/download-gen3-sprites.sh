#!/bin/bash

# Download Generation 3 Pokemon Sprites Script
# Downloads animated sprites for Pokemon #252-#386 from ProjectPokemon.org

set -e

# Configuration
BASE_URL="https://projectpokemon.org/images/sprites-models/bw-animated"
OUTPUT_DIR="/workspace/project/Assets/gen3-sprites"
START_NUM=252
END_NUM=386

# Create output directory
mkdir -p "$OUTPUT_DIR"
echo "Created directory: $OUTPUT_DIR"

# Function to download a sprite
download_sprite() {
    local num=$1
    local variant=$2
    local filename
    
    if [ -n "$variant" ]; then
        filename="${num}-${variant}.gif"
    else
        filename="${num}.gif"
    fi
    
    local url="${BASE_URL}/${filename}"
    local output_path="${OUTPUT_DIR}/${filename}"
    
    echo "Downloading: $filename"
    
    if curl -s -f "$url" -o "$output_path"; then
        echo "✓ Downloaded: $filename"
        return 0
    else
        echo "✗ Failed: $filename (404 or error)"
        rm -f "$output_path" 2>/dev/null
        return 1
    fi
}

# Main download loop
echo "Starting Generation 3 Pokemon sprite download..."
echo "Range: Pokemon #$START_NUM to #$END_NUM"
echo "Source: ProjectPokemon.org"
echo ""

total_downloaded=0
total_failed=0

# Download in smaller batches to avoid timeouts
for batch_start in $(seq $START_NUM 10 $END_NUM); do
    batch_end=$((batch_start + 9))
    if [ $batch_end -gt $END_NUM ]; then
        batch_end=$END_NUM
    fi
    
    echo "Processing batch: Pokemon #$batch_start to #$batch_end"
    
    for num in $(seq $batch_start $batch_end); do
        # Skip if already downloaded
        if [ -f "${OUTPUT_DIR}/${num}.gif" ]; then
            echo "⚡ Skipped: ${num}.gif (already exists)"
            ((total_downloaded++))
            continue
        fi
        
        echo "Processing Pokemon #$num..."
        
        # Download standard sprite
        if download_sprite "$num"; then
            ((total_downloaded++))
        else
            ((total_failed++))
        fi
        
        # Try common variants (based on known Pokemon with variants)
        case $num in
            # Deoxys forms
            386)
                for form in "attack" "defense" "speed"; do
                    if [ ! -f "${OUTPUT_DIR}/${num}-${form}.gif" ]; then
                        if download_sprite "$num" "$form"; then
                            ((total_downloaded++))
                        else
                            ((total_failed++))
                        fi
                    fi
                done
                ;;
            # Female variants for applicable Pokemon
            255|256|257|308|315|322|323)  # Torchic line, Medicham, Roselia, Numel line
                if [ ! -f "${OUTPUT_DIR}/${num}-f.gif" ]; then
                    if download_sprite "$num" "f"; then
                        ((total_downloaded++))
                    else
                        ((total_failed++))
                    fi
                fi
                ;;
        esac
        
        # Small delay to be respectful
        sleep 0.1
    done
    
    echo "Completed batch: Pokemon #$batch_start to #$batch_end"
    echo "Current progress: $total_downloaded downloaded, $total_failed failed"
    echo ""
done

echo ""
echo "Download Summary:"
echo "✓ Successfully downloaded: $total_downloaded sprites"
echo "✗ Failed downloads: $total_failed sprites"
echo "Output directory: $OUTPUT_DIR"

# List downloaded files
echo ""
echo "Downloaded files:"
ls -la "$OUTPUT_DIR" | grep "\.gif$" | wc -l | xargs echo "Total .gif files:"
ls -la "$OUTPUT_DIR"/*.gif 2>/dev/null | head -10

echo ""
echo "Generation 3 sprite download complete!"
echo "Next steps:"
echo "1. Review downloaded sprites for quality"
echo "2. Convert to GameMaker Studio compatible format"
echo "3. Add sprites to Pokemon Town.yyp project"