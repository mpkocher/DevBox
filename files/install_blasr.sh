#!/bin/bash

if [ ! -d "$HOME/tools" ]; then
	mkdir $HOME/tools
fi

if [ ! -d "$HOME/tmp" ]; then
	mkdir $HOME/tmp
fi

cd $HOME/tmp

git clone git://github.com/PacificBiosciences/blasr.git

cd blasr
export ANALYSIS_HOME=$HOME/tools
make
make install
