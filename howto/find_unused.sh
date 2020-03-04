#!/bin/bash

gcc -ffunction-sections -fdata-sections -Wl,--gc-sections -Wl,--print-gc-sections main.cpp
