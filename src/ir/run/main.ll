void get_next(int str[], int next[])
{
    int i = 0, j = -1;
    next[0] = -1;
    while (str[i]) {
        if (j == -1 || str[i] == str[j]) {
            j = j + 1;
            i = i + 1;
            next[i] = j;
        }
        else
            j = next[j];
    }
}
