 set /p epc=Specify the number of episodes:
 for /l %%a in (1,1,%epc%)  do ( md e%%a &  ffmpeg -i %%a.mp4 -codec: copy -start_number 0 -hls_time 10 -hls_list_size 0 -f hls ./e%%a/index.m3u8 )
 md trailer
 ffmpeg -i trailer.mp4 -codec: copy -start_number 0 -hls_time 10 -hls_list_size 0 -f hls ./trailer/index.m3u8