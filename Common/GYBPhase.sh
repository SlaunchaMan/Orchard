#!/bin/sh

#  GYBPhase.sh
#  Orchard
#
#  Created by Jeff Kelley on 3/21/19.
#  
GYB_PATH="${SRCROOT}/Vendor/gyb/gyb"

function gyb {
    file=$1
    if [ ${file: -4} == ".gyb" ]; then
        echo "GYBing file:" $file
        "${GYB_PATH}" --line-directive '' -o "${file%.gyb}" "$file";
    else
        echo "Skipping file" $file "since it's not a .gyb file"
    fi
}

if [ $SCRIPT_INPUT_FILE_COUNT -ne 0 ]; then
    for i in $(seq 0 $(expr $SCRIPT_INPUT_FILE_COUNT - 1)); do
        inputFileVar="SCRIPT_INPUT_FILE_${i}"
        inputFile="${!inputFileVar}"
        gyb $inputFile
    done
fi

if [ $SCRIPT_INPUT_FILE_LIST_COUNT -ne 0 ]; then
    for i in $(seq 0 $(expr $SCRIPT_INPUT_FILE_LIST_COUNT - 1)); do
        inputFileListVar="SCRIPT_INPUT_FILE_LIST_${i}"
        inputFileList="${!inputFileListVar}"
        cat "${inputFileList}" | while read inputFile; do
            gyb $inputFile
        done
    done
fi