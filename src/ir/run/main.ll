void a(int x[]) {
        x[1] = 1;
}
int main() {
        int q[3];
        q[1] = 2;
        a(q);
        return q[1];
}
