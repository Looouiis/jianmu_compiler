int getf(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j[]) {
    return j[1];
}

float tstfloat(int ia, int ib, int ic, int id, int ie, int iif, int ig, int ih, float a, float b, float c, float d, float e, float f, float g, float h, float i, float j, float k[]) {
    return j;
}

int main() {
    int b[2] = {10, 11};
    int a = getf(1, 2, 3, 4, 5, 6, 7, 8, 9, b);
    float fb[2] = {10.10, 11.11};
    float c = tstfloat(1, 2, 3, 4, 5, 6, 7, 8, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 1.1, 2.2, fb);
    if(a == 11) {
        return 2;
    }
    return 0;
}
