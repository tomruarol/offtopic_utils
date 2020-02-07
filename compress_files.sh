#!/bin/bash

# Script to compress files under a directory and delete the original file (the uncompressed one)

# Arguments: --dir: directory where files are located

echo "COMPRESSING FILES"
echo "Argument: $1"

#zip -r t_compressed_files.zip $1 ## Compress the file passed as argument

cd $1
for i in */; do zip -r -m "${i%/}.zip" "$i"; done
