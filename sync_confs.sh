#!/bin/bash

cp ~/.vimrc .
cp ~/.tmux.conf .
git add .
git commit -m "Актуализированы конфиги"
git push
