# clang -emit-llvm -S main.c -o main.ll
cd /home/Looouiiis/compile/extra/cpp/src/ir/run
llvm-as main.ll -o main.bc
lli main.bc
echo $?
