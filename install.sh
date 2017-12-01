#!/bin/bash
mkdir -p ~/bin/dist
cp -r ./dist ~/bin/dist/wmode
rm -f ~/bin/wmode
ln -s -T ~/bin/dist/wmode/wmode.sh ~/bin/wmode
