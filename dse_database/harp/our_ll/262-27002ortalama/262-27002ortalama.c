#include <stdio.h>
// fonksiyonu boyutu belli olan (6 elemanli) bir dizi gonderilmek istenilirse
float dizi_toplam(float d[6]) {
	int i;
	float toplam = 0;
	for (i = 0 ; i < 6 ; i++) {
		toplam += d[i];
	}
	return toplam;
}
int main() {
	int i;
	float kareler[6];
	for (i = 0 ; i < 6 ; i++)
		kareler[i] = i*i;
	float toplam = dizi_toplam(kareler);
	float ortalama = toplam / 6.0;
	printf("toplam: %f\n", toplam);
	printf("ortalama: %f\n", ortalama);
	return 0;
}
