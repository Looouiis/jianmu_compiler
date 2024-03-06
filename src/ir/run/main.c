// reference: https://zhuanlan.zhihu.com/p/20085048
extern float getfloat();
extern int getint();
extern void putfloat(float);
extern void putch(int);
extern void putint(int);

const int TWO = 2.9, THREE = 3.2, FIVE = TWO + THREE;


int main() {
  putfloat(FIVE);
  putch(10);
}
