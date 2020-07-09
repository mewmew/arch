#!/bin/bash

REGION=`slurp`
wf-recorder -g "${REGION}" -f ~/recording_`date "+%F_%H:%M:%S"`.mp4
