#!/bin/sh
video=$1
audio=$2
title=$3
if [[ -z "$1" ]];then
    for i in {1..3};do
        if [[ "$i" == "1" ]];then
            read -p "请拖入视频：" video
        elif [[ "$i" == "2" ]];then
            read -p "请拖入音频：" audio
        elif [[ "$i" == "3" ]];then
            read -p "请输入视频标题：" title
        fi
    done
fi
if [[ -z "$title" ]];then
    titleRaw=$(basename "$video")
    title=${titleRaw%.*}
fi
cd $(dirname "$video")
ffmpeg -i $video -i $audio -c:v copy -c:a copy "$title.mp4"