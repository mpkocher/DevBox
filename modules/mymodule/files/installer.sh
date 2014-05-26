#!/usr/bin/env

## this should be run via sudo

venv=$HOME/.virtualenvs
mkdir -p $HOME/.virtualenvs

menv=$venv/venv

sudo easy_install pip

pip install virtualenv
pip install virtualenvwrapper

virtualenv --system-site-packages $menv

$menv/bin/activate

pip install flask
pip install ipython


# create virtualenv for emacs

deactivate

evenv=$venv/emacs

virtualenv --system-site-packages $evenv

$evenv/bin/activate

pip install elpy
pip install ipython
