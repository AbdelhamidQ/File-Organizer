#!/bin/bash

TESTDIR="sample_dir"

mkdir -p "$TESTDIR"

# Images
touch "$TESTDIR/photo1.jpg"
touch "$TESTDIR/photo2.png"
touch "$TESTDIR/graphic.gif"

# Documents
touch "$TESTDIR/report.pdf"s
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



echo "Sample test directory '$TESTDIR' created with test files and duplicates."
