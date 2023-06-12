#!/usr/bin/fish
for file in ./*.*
    if test $file -ef (status filename);
        continue
    end
    brotli $file -o ../static/{$file}.br -f
    cp $file ../static/{$file}
end