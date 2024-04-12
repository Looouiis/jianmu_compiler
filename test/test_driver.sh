#!/bin/bash

# 设置待测试程序的路径和测试样例文件夹的路径
compiler_path="../build/compiler"
test_cases_folder="./testcases/"

test_paths=$(ls -l "$test_cases_folder" | grep '^d' | awk '{print $NF}')

for path in ${test_paths}; do
    test_path="${test_cases_folder}${path}/"
    sh ./asm_test_base.sh $compiler_path $test_path
done