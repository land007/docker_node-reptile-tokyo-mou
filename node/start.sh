#!/bin/bash
nohup /analytics.sh > /dev/null 2>&1 &
/check.sh /node
supervisor -w /node/ /node/server.js
