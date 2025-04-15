#!/bin/bash

set -x #debug mode
set -e #exit the script when there is an error
set -o #pipe fails

df

free
 
nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
