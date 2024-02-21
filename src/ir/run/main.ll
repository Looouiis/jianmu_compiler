int ro(int x[], int a) {
        if(a < 5) {
                x[1] = x[1] + 1;
                return ro(x, a + 1);
        }
        return 1;
}

int main() {
        int b[5] = {};
        ro(b, 0);
        putint(b[1]);
        return 0;
}
