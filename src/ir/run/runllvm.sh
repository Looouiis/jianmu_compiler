# clang -emit-llvm -S main.c -o main.ll
cd /home/Looouiiis/experiment/exp5/frame/src/ir/run
llvm-as main.ll -o main.bc
lli main.bc
echo $?
