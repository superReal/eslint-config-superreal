#!/bin/bash
set -o errexit

num=`git status --porcelain | grep 'src\|test/' | wc -l`

if [ "$num" -gt "0" ]
then
    eslint './index.js' './test/scripts/*.js'
fi
