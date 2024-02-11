# clang -emit-llvm -S main.c -o main.ll
cd /home/Looouiiis/compile/extra/cpp/src/ir/run
clang main.ll ../../../lib/sylib.so -o app
./app
# llvm-as main.ll -o main.bc
# lli -load=/home/Looouiiis/compile/extra/cpp/lib/sylib.so main.bc
echo $?
