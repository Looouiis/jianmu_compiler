import subprocess
import os
import sys

# 设置待测试程序的路径
compiler_path = "../build/compiler"

# 存储每个文件夹的失败测试用例数量和失败测试用例名称
failed_cases = {}

# 测试样例的根目录
test_cases_root = "./testcases"

# 遍历测试样例根目录下的所有文件夹
for folder_name in os.listdir(test_cases_root):
    folder_path = os.path.join(test_cases_root, folder_name)
    if os.path.isdir(folder_path):
        # 初始化当前文件夹的失败测试用例列表和计数器
        failed_cases[folder_name] = {'count': 0, 'cases': []}
        print(f"Starting tests for group: {folder_name}")

        # 获取当前文件夹中所有的测试样例文件
        test_cases = [f for f in os.listdir(folder_path) if f.endswith(".sy")]

        # 遍历每个测试样例文件
        for test_case in test_cases:
            test_case_path = os.path.join(folder_path, test_case)
            print(f"  Testing: {test_case}")

            try:
                # 调用待测试的程序，并将测试样例文件作为输入，将结果输出到文件
                with open("o.S", "w") as output_file:
                    subprocess.run([compiler_path, test_case_path], stdout=output_file, check=True, text=True)

                # 编译生成的汇编代码
                subprocess.run(["loongarch64-unknown-linux-gnu-gcc", "-static", "o.S", "-o", "app", "/home/Looouiiis/compile/extra/cpp/lib/sylib.c"], check=True)

                # 获取同名的输入文件
                input_file = os.path.join(folder_path, f"{test_case}.in")

                # 运行测试用例
                with open("actual.out", "w") as result_file:
                    if os.path.exists(input_file):
                        subprocess.run(["qemu-loongarch64", "app", "<", input_file], stdout=result_file, stderr=subprocess.STDOUT, check=True)
                    else:
                        subprocess.run(["qemu-loongarch64", "app"], stdout=result_file, stderr=subprocess.STDOUT, check=True)

                # 获取程序的执行返回值
                # res = ...

                # 获取同名的输出文件
                output_file = os.path.join(folder_path, f"{test_case}.out")

                # 比较实际输出和预期输出
                with open("expected.out", "w") as expected_file:
                    if os.path.exists(output_file):
                        with open(output_file, "r") as of:
                            expected_content = of.read()
                        expected_file.write(expected_content)

                # 比较最后一行
                expected_last_line = expected_output.strip()
                actual_last_line = result_file.name.strip()
                if expected_last_line != actual_last_line:
                    raise Exception(f"Error in test return: {test_case}, expected return: {expected_last_line}, actual return: {actual_last_line}")

                # 如果测试通过，输出成功信息
                print(f"  Success: {test_case}")

            except subprocess.CalledProcessError as e:
                # 如果测试失败，记录失败的测试用例名称和计数
                failed_cases[folder_name]['count'] += 1
                failed_cases[folder_name]['cases'].append(test_case)
                print(f"    Error in test case: {test_case}\n    {e}")

# 输出测试结果
print("Testing completed.")  # 测试完成
for folder_name, info in failed_cases.items():
    failed_count = info['count']
    if failed_count > 0:
        print(f"Group: {folder_name} - Failed tests: {failed_count}")
        for case in info['cases']:
            print(f"  {case}")
    else:
        print(f"Group: {folder_name} - All tests passed successfully.")

# 如果有失败的测试用例，输出总的失败测试用例数量
total_failures = sum(failed_cases.values(), [{'count': 0}])[0]['count']
print(f"Total failed test cases: {total_failures}")