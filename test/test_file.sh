#!/bin/bash

./../polycc $*  -o test_temp_out.pluto.c > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo -e "\e[31mFailed\e[0m" " $file"!
    exit -1
else
    echo -e "\e[32mPassed\e[0m"
    exit 0
fi
