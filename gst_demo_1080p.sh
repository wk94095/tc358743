#!/bin/bash
gst-launch-1.0 -v --gst-debug-level=1 v4l2src device=/dev/video0 ! "video/x-raw,width=1920,height=1080,format=(string)UYVY" ! nvvidconv ! "video/x-raw(memory:NVMM),width=1920,height=1080,format=(string)I420" ! nvoverlaysink sync=false
#gst-launch-1.0 -v --gst-debug-level=1 v4l2src device=/dev/video0 ! "video/x-raw,width=1920,height=1080,framerate=60/1,format=(string)UYVY" ! nvvidconv ! "video/x-raw(memory:NVMM),width=1920,height=1080,framerate=60/1,format=(string)I420" ! nvoverlaysink sync=false
