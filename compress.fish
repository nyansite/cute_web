#!/usr/bin/fish
rm -rf static
mkdir static
for file in static_in/*.*
    brotli $file -o static/(basename $file).br -f
    cp $file static/(basename $file)
end