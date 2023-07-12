#!/bin/bash

case "$1" in
0) sleep 5 ;;
1) ffmpeg -i output.mp4 -filter:v "crop=405:720:0:0" output1.mp4 ;;
2) ffmpeg -i output.mp4 -filter:v "crop=405:720:320:0" output1.mp4 ;;
3) ffmpeg -i output.mp4 -filter:v  "crop=405:720:500:0" output1.mp4 ;;
4) ffmpeg -i output.mp4 -filter:v "crop=405:720:960:0" output1.mp4 ;;
5) ffmpeg -i output.mp4 -filter:v  "crop=405:720:450:0" output1.mp4 ;;
esac
