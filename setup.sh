#!/bin/bash

copy_setup_file ()
{
    INPUT_FILE_PATH=$1
    OUTPUT_FILE_PATH=$2

    if [ -f "$OUTPUT_FILE_PATH" ]
    then
	    echo "Warning: $OUTPUT_FILE_PATH already exists, please merge files manually."
    else
	    echo "Copying $OUTPUT_FILE_PATH"
        cp $INPUT_FILE_PATH $OUTPUT_FILE_PATH
    fi
}

echo "Copying files ..."
copy_setup_file bash_profile.local $HOME/.bash_profile
copy_setup_file vimrc.local $HOME/.vimrc
copy_setup_file inputrc.local $HOME/.inputrc

echo "finished"

