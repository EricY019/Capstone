int main() {
    static int x[5000][5000];
    for (int j = 0; j < 5000; j++) {
	    for (int i = 0; i < 5000; i++) {
            x[j][i]++;
        }
    }

    return 0;
}
