#!/usr/bin/env bash

[ -d "venv" ] || python -m venv venv
deactivate || echo "No need to deactivate"
. venv/Script/activate
git clone -c http.sslVerify=false https://github.com/ultralytics/yolov5.git || echo "already cloned"
pip install -r yolov5/requirements.txt
# python yolov5/detect.py --weights yolov5n.pt --img 64 --conf 0.25 --source 0
python yolov5/detect.py --weights yolov5s.pt --img 160 192 --conf 0.25  --source 0
