#!/usr/bin/fish
rm -rf static
mkdir static
for file in static_in/*.*
    # if test $file -ef (status filename);
    #     continue
    # end
    brotli $file -o static/(basename $file).br -f
    cp $file static/(basename $file)
end