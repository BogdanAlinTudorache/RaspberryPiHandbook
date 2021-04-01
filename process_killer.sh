#!/bin/bash
  
ps -ef | grep python | grep -v grep | awk '{print $2}' |  xargs -I '{}' kill {}
