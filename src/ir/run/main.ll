int getf(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j[]) {
    return i;
}

float tstfloat(int ia, int ib, int ic, int id, int ie, int iif, int ig, int ih, float a, float b, float c, float d, float e, float f, float g, float h, float i, float j, float k[]) {
    return i;
}

int main() {
    int b[2] = {10, 11};
    int a = getf(1, 2, 3, 4, 5, 6, 7, 8, 9, b);
    float fb[2] = {10.10, 11.11};
    float c = tstfloat(1, 2, 3, 4, 5, 6, 7, 8, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, fb);
    if(a == 1.0) {
        return 1;
    }
    return 0;
}






int getf(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j[]) {
    return j[0];
}

int main() {
    int b[2] = {76};
    int a = getf(1, 2, 3, 4, 5, 6, 7, 8, 9, b);
    putint(a);
    putch(10);
    putint(b[0]);
    putch(10);
    if(b[0] == 76) {
        return 0;
    }
    return 1;
}


int get(int x[]) {
        return x[0];
}
int main() {
        int b[2];
        b[0] = 333;
        int a = get(b);
        putint(a);
        putch(10);
        return 0;
}
