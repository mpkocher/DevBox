#!/bin/bash

cd `mktemp -d`
wget https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod +x lein 
sudo mv lein /usr/local/bin/
lein help
cd -
