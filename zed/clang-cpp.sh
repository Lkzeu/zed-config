#!/bin/bash
echo "\t[runing $ZED_FILENAME]\t"

extension="${ZED_FILENAME##*.}"
output="$ZED_DIRNAME/$ZED_STEM"

echo "----------------------------------------------------------"

if [ "$extension" = "cpp" ]; then
   clang++-15 -std=c++17 "$ZED_FILE" -o "$output.out" && "$output.out";
elif [ "$extension" = "py" ]; then
   python3 "$ZED_FILE";
else
   echo "dont know it yet"
fi
