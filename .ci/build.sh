#!/usr/bin/env fish

echo "=> Generating member directory"
cp members.template members.txt

for user in (getent group members | cut -d: -f4 | tr ',' \\n)
  echo "- [~$user](/~$user)" >> members.txt
end

echo
echo "=> Building site"

~/chop/chop.js

echo
echo "=> Formatting generated HTML"

cd dist/web && prettier --write "./**/*.html" !{header, footer}.html

