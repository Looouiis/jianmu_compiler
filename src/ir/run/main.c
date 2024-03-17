// int main() {
//     int a = 1;
//     while(a < 5) {
//         int b = 1;
//         while(b < 5) {      // 对应%r14
//             int c = 1;
//             while(c < 5) {
//                 int d = 1;
//                 while(d < 5) {
//                     d = d + 1;
//                 }
//                 c = c + 1;
//             }
//             b = b + 1;
//         }
//         a = a + 1;
//     }
//     return 2;
// }

int main() {
    int a, b, c, d;
    if(1) {
        a = 1;
        b = 1;
        c = 1;
        d = 1;
    }
    else {
        a = 2;
        b = 2;
        c = 2;
        d = 2;
    }
    putint(a); putch(10);
    putint(b); putch(10);
    putint(c); putch(10);
    putint(d); putch(10);
}
