#!/bin/bash

find -name "*.smc" | for i in stdin; do echo "\"${stdin[i]}\","; done

beginnerHacks=find -name "*.smc"
beginnerHacksOutput="["

for i in beginnerHacks; do
    beginnerHacksOutput+="\"${beginnerHacks}\","
done

beginnerHacksOutput+="]"

echo $beginnerHacksOutput