#!/bin/bash

inputvod="$1"
starttime="$2"
endtime="$3"
ffmpeg -ss $starttime -to $endtime -i $inputvod -c:v copy -c:a copy output.mp4 
sleep 5
case "$4" in
0) sleep 5 ;;
1) ffmpeg -i output.mp4 -filter:v "crop=405:720:0:0" output2.mp4 ;;
2) ffmpeg -i output.mp4 -filter:v "crop=405:720:320:0" output2.mp4 ;;
3) ffmpeg -i output.mp4 -filter:v  "crop=405:720:500:0" output2.mp4 ;;
4) ffmpeg -i output.mp4 -filter:v "crop=405:720:960:0" output2.mp4 ;;
5) ffmpeg -i output.mp4 -filter:v  "crop=405:720:450:0" output2.mp4 ;;
esac
