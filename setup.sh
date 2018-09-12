#!/bin/bash

copy_setup_file ()
{
    FILENAME=$1 #input file
    FILE=$HOME/$2 #output file

    if [ -f "$FILE" ]
    then
	    echo "Warning: $FILE already exists, please merge files manually."
    else
	    echo "Copying $FILE"
        cp $FILENAME $FILE
    fi
}

echo "Copying files ..."
copy_setup_file bash_profile.local .bash_profile
copy_setup_file vimrc.local .vimrc
copy_setup_file inputrc.local .inputrc
echo "finished"

