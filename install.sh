#!/bin/bash

# Find all dot files then if the original file exists, create a backup
# Once backed up to {file}.dtbak symlink the new dotfile in place
for file in $(find . -maxdepth 1 -name ".*" -type f); do
    if [ -e ~/$file ]; then
	echo "backing up $file"
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done


# Check if vim-addon installed, if not, install it automatically
#if hash vim-addon  2>/dev/null; then
#    echo "vim-addon (vim-scripts)  installed"
#else
#    echo "vim-addon (vim-scripts) not installed, installing"
#    brew install vim-scripts
#fi

echo "Installed"
