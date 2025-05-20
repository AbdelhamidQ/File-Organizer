#!/bin/bash
# testing.sh - Create a sample directory with test files for file_organizer.sh

TESTDIR="sample_test_dir"

mkdir -p "$TESTDIR"

# Images
touch "$TESTDIR/photo1.jpg"
touch "$TESTDIR/photo2.png"
touch "$TESTDIR/graphic.gif"

# Documents
touch "$TESTDIR/report.pdf"
touch "$TESTDIR/notes.txt"
touch "$TESTDIR/assignment.docx"

# Music
touch "$TESTDIR/song1.mp3"
touch "$TESTDIR/track.wav"

# Videos
touch "$TESTDIR/movie.mp4"
touch "$TESTDIR/clip.avi"
touch "$TESTDIR/series.mkv"

# Others
touch "$TESTDIR/script.sh"
touch "$TESTDIR/archive.zip"
touch "$TESTDIR/README"

# Add duplicate files
cp "$TESTDIR/photo1.jpg" "$TESTDIR/photo1_copy.jpg"
cp "$TESTDIR/photo1.jpg" "$TESTDIR/photo1.jpg" # duplicate name
cp "$TESTDIR/report.pdf" "$TESTDIR/report.pdf" # duplicate name
cp "$TESTDIR/notes.txt" "$TESTDIR/notes.txt" # duplicate name
cp "$TESTDIR/song1.mp3" "$TESTDIR/song1.mp3" # duplicate name
cp "$TESTDIR/movie.mp4" "$TESTDIR/movie.mp4" # duplicate name
cp "$TESTDIR/script.sh" "$TESTDIR/script.sh" # duplicate name

echo "Sample test directory '$TESTDIR' created with test files and duplicates."
