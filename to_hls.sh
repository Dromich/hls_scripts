#!/bin/bash

for file in *."mp4"
do
	filename=$(basename -- "$file")
  
    
	echo Конвертую $file
	mkdir ${filename%.*}
	ffmpeg -i $file -codec: copy -start_number 0 -hls_time 10 -hls_list_size 0 -f hls ./${filename%.*}/index.m3u8

done;