#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Please provide a directory path as an argument."
    exit 1
fi

dir="$1"


if [ ! -d "$dir" ]; then
    echo "Error: '$dir' is not a valid directory."
    exit 1
fi


for subdir in Images Documents Music Videos Others dups; do
    if [ ! -d "$dir/$subdir" ]; then
        mkdir "$dir/$subdir"
        echo "Created directory: $subdir"
    fi
done


for file in "$dir"/*; do
    if [ -f "$file" ]; then
        name=$(basename "$file")
        ext="${name##*.}"
        
        case "${ext,,}" in
            jpg|png|gif)
                dest="$dir/Images/$name" ;;
            pdf|docx|txt)
                dest="$dir/Documents/$name" ;;
            mp3|wav)
                dest="$dir/Music/$name" ;;
            mp4|avi|mkv)
                dest="$dir/Videos/$name" ;;
            *)
                dest="$dir/Others/$name" ;;
        esac

        if [ -e "$dest" ]; then
            mv "$file" "$dir/dups/$name"
            echo "Duplicate: $name moved to dups/"
        else
            mv "$file" "$dest"
            echo "Moving file $name to ${dest%/*}/"
        fi
    fi
done
