#include <stdio.h>

void merge(int a[], int l, int m, int r) {
int i = l, j = m + 1, k = 0;
int temp[100];  // ساده: یک آرایه کمکی ثابت


while (i <= m && j <= r)
    temp[k++] = (a[i] < a[j]) ? a[i++] : a[j++];

while (i <= m) temp[k++] = a[i++];
while (j <= r) temp[k++] = a[j++];

for (i = l, k = 0; i <= r; i++, k++)
    a[i] = temp[k];


}

void mergeSort(int a[], int l, int r) {
if (l >= r) return;


int m = (l + r) / 2;

mergeSort(a, l, m);
mergeSort(a, m + 1, r);
merge(a, l, m, r);

}

int main() {
int a[] = 
{87, 3, 56, 12, 74, 29, 91, 48, 65, 7, 
22, 39, 84, 18, 60, 5, 77, 33, 99, 41, 
14, 68, 26, 93, 1, 50, 36, 79, 10, 88, 
4, 71, 20, 55, 95, 17, 62, 9, 46, 81, 
34, 13, 58, 25, 96, 8, 43, 30, 73, 66} ; 

int n = 50;


mergeSort(a, 0, n - 1);

for (int i = 0; i < n; i++)
    printf("%d ", a[i]);

return 0;


}
