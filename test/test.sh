#!/bin/bash

# 设置待测试程序的路径和测试样例文件夹的路径
compiler_path="../build/compiler"
test_cases_folder="./testcases/func/"

# 初始化成功和失败的测试用例数量
success_count=0
failure_count=0
failed_cases=()

# 获取测试样例文件夹中所有的测试样例文件
test_cases=$(ls "${test_cases_folder}"*.sy)

# 遍历每个测试样例文件
for test_case in ${test_cases}; do
    # 提取测试样例的编号和名称
    base_name=$(basename "${test_case}")
    test_name="${base_name%.*}"

    # 打印当前正在执行的测试样例
    echo "Generating asm for test case: ${test_name}"

    # 调用待测试的程序，并将测试样例文件作为输入，将结果输出到文件
    "${compiler_path}" < "${test_case}" > "o.S"

    # 获取程序的执行返回值
    exit_code=$?

    # 判断返回值是否为0
    if [ ${exit_code} -ne 0 ]; then
        # 输出文件名
        # echo "Error in test case: ${test_name}"
        failed_cases+=("$test_name": Compile Error)
        let failure_count+=1
        continue
    fi

#    llvm-as o.ll -o o.bc /home/Looouiiis/compile/extra/jianmu-supplemental/func/sylib.c
#	llvm-as o.ll -o o.bc
	
    # cp o.S ../sysdeps/loongarch/start.S

    echo "GCC compiling asm for test case: ${test_name}"

	loongarch64-unknown-linux-gnu-gcc -static o.S /home/Looouiiis/compile/extra/cpp/lib/sylib.c -o app

    # 获取同名的输入文件
    input_file="${test_cases_folder}${test_name}.in"

    echo "Running test case: ${test_name}"

    # 判断输入文件是否存在
    if [ -f "${input_file}" ]; then
        # 将输入文件内容传递给 lli o.bc
         qemu-loongarch64 app < "${input_file}" > actual.out
    else
        # 否则，直接执行 lli o.bc
         qemu-loongarch64 app > actual.out
    fi

    # 获取程序的执行返回值
    res=$?

    # is_file_empty=$(wc -c < actual.out)

    # if [ $is_file_empty -ne 0 ]; then
    echo >> actual.out
    # fi

    sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' actual.out > actual.tmp

    mv actual.tmp actual.out

    dos2unix actual.out

    # 获取同名的输出文件
    output_file="${test_cases_folder}${test_name}.out"

    # 判断输出文件是否存在
    if [ -f "${output_file}" ]; then
        # 复制 outfile 到 expected_output，并去掉最后一行
        sed '$d' "${output_file}" > expected_output

        echo >> expected_output

        sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' expected_output > expected_output.tmp

        mv expected_output.tmp expected_output

        dos2unix expected_output

        # 比较 actual.out 和 expected_output
        diff_output=$(diff actual.out expected_output)

        # 判断是否有差异
        if [ -n "${diff_output}" ]; then
            failed_cases+=("$test_name: Output differs")
            let failure_count+=1
            echo "$test_name: Output differs"
            exit 1
            continue
        fi

        # 比较最后一行
        expected_last_line=$(tail -n 1 "${output_file}")
        if ((res != expected_last_line)); then
            failed_cases+=("$test_name: Return value differs")
            let failure_count+=1
            continue
        fi

    fi

    let success_count+=1
    echo "------------------------------------"

done

    echo "Passed: ${success_count}"
    echo "Failed: ${failure_count}"
    if [ ${failure_count} -gt 0 ]; then
        echo "Failed test cases:"
        printf "%s\n" "${failed_cases[@]}"
    fi

