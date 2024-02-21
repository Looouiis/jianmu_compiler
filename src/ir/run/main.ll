int main() {
        int a = 0;
        int sum = a;
        {
                int a = 1;
                a = a + 1; // 2
                sum = sum + a; // 2
                {
                        int a = 2;
                        a = a + 2; // 4
                        sum = sum + a; // 6
                }
                a = a + 1; // 3
                sum = sum + a; // 9
        }
        a = a + 3; // 3
        sum = sum + a; // 12
        return sum;
}