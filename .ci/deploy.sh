#!/usr/bin/env fish

bix build

chmod g+w -R dist
chown :mod -R dist

cp -af dist/gem/* /var/gemini
cp -af dist/web/* /var/www

