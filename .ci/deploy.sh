#!/usr/bin/env fish

bix build

rsync -a dist/gem /var/gemini
rsync -a dist/web /var/www


