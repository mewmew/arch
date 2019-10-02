#!/bin/bash

REGION=`slurp`
grim -g "${REGION}" ~/screenshot_`date "+%F_%H:%M:%S"`.png
