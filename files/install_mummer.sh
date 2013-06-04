#!/bin/bash

mummer_latest=MUMmer-latest.tar.gz

wget --output-document=$mummer_latest http://sourceforge.net/projects/mummer/files/latest/download?source=files

tar xvfz $mummer_latest

cd MUMmer-*

make check
make
make install

if [ ! -d "$HOME/bin" ]; then
	mkdir $HOME/bin
fi

cd ..


echo "creating soft links to $HOME/bin"
# link exe's to $HOME/bin/
for i in $(find MUMmer3.23 -type f -maxdepth 1 -executable)
        do
                echo $i
                #ln -s $i $HOME/bin/
                x=`basename $i`
                ln -s $i $HOME/bin/$x
done

echo "Completed installing MUMmer"
