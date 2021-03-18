# Olivers_Utilities

来自Oliver的sh工具箱，收集了我自己写的各式各样的小工具。

## 目前可用的

### compare

使用MD5来比较两个文件是否相同。

用法：

`compare [file1] [file2]` 或直接运行 `compare`。

### fixusbd

解决手机连接到Mac后闪断的问题。

用法：`fixusbd`

### unpack

一键解压从某网站下载的资源。解压完的资源将放置在桌面上名为“payload"的文件夹内。

用法：`unpack [resource]`或`unpack`

### removeAd

移除片头特定时长的广告。需要ffmpeg。

时长默认为秒数，可以在其后增加时间指示更改单位。如：`120mm` 表示丢弃前部120毫秒的内容。

### pause

为shell补充缺失的pause命令。调用本功能后会提示“请按任意键继续……"

### combine

用于合并从各个平台(Youtube)下载的音画分离文件，需要ffmpeg。

用法:

`combine [视频源] [音频源] [标题]`

或者你可以直接运行`combine`命令

## 需进行适配或增加功能的

下面列出的小工具未进行通用适配，仅适用于我的环境。

与媒体相关的部分需要[ffmpeg](https://github.com/FFmpeg/FFmpeg)。
以下是各个工具的说明：

### clean potos.sh

当你用Mac自带的图像捕捉程序从iPhone导出照片时会自动导出.mov、.HEIC和.jpg三个文件。本脚本将会删除.mov和.jpg，仅保留.HEIC文件。此脚本适用于你不清楚到底你删了哪个照片的哪个文件，脚本会自动判断并删除。

- [ ] 增加用户选择保留什么文件

## 不知道有啥用途不打算做适配的

### 批量添加字幕.sh

视频和字幕在同一文件夹且命名相同时，将字幕文件以软字幕的方式添加到视频并封装在mkv容器中，需要ffmpeg。

### change bitrate.sh

参数1为源音频文件，参数2为目标比特率。默认输出到源音频文件同目录下，需要ffmpeg。

## 需要写给Utilities的脚本

- [ ] 自动更新脚本
