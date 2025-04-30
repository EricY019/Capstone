#include <stdio.h>
#include <math.h>

void printArray(int *A, int len) {
   for(int i = 0; i < len; i++) {
       printf("%d ", A[i]);
   }
}

void swap(int *A, int i, int j) {
    int tmp = A[i];
    A[i] = A[j];
    A[j] = tmp;
}


/**
 * sorting problme
 * input: <a1, a2, ..., an>
 * output: <a1`,a2`,...,an`> is a reording list, a1` ≤ a2` ≤ ... ≤ an`
 */
 
/**
 * insertion sort
 * A[1..n] -> B[1..n]
 *
 * B[1..1] = A[1..1]
 * B[1..i] = insert(B[1..i-1], A[i])
 *
 * the insert way: 
 * (1) B[j + 1] = B[j]. move all elements bigger than A[i] to the next indice.
 * (2) place A[i] at the right palce. B[j + 1] = A[i]
 */
int * insertionSort(int *A, int len) {
    for (int i = 1; i < len; i++) {
        int v = A[i];
        // insert A[i] into the sorted sequence A[1..i-1]
        int j = i - 1;
        // translate elements bigger than v to next indice
        while(j >= 0 && A[j] > v) {
            A[j + 1] = A [j];
            j--;
        }
        A[j + 1] = v;
    }
    return A;
}

/**
 * p..m   sorted
 * m+1..q sorted
 *
 * compare top of the two stack
 */
void merge(int *A, int p, int m, int q) {
    int len1 = m - p + 1;
    int len2 = q - m;
    int L[len1];
    int R[len2];
    // copy
    for(int i = p; i <= m; i++) {
        L[i - p] = A[i];
    }
    for(int i = m + 1; i <= q; i++) {
        R[i - m - 1] = A[i];
    }
    int k1 = 0;
    int k2 = 0;
    for(int i = p; i <= q; i++) {
        if(k1 >= len1) { // left is all used
            A[i] = R[k2++];
        }
        else if(k2 >= len2) { // right is all used
            A[i] = L[k1++];
        }
        else if(L[k1] <= R[k2]) {
            A[i] = L[k1++];
        } else {
            A[i] = R[k2++];
        }
    }
}

/**
 * merge sort
 *
 * divide and conqure
 *
 * mergeSort(A[p..p]) = A[p..p] 
 * 
 * m = p + (q - p) / 2;
 * mergeSort(A[p..q]) = merge(mergeSort(A[p..m]), mergeSort(A[m+1..q))
 */
int * mergeSort(int *A, int p, int q) {
    if(p == q) {
        return A;
    }
    int m = p + floor((q - p) / 2);
    mergeSort(A, p, m);
    mergeSort(A, m + 1, q);
    // combine
    merge(A, p, m, q);
    return A;
}

/**
 * heapsort
 *
 * (binary) heap
 * 1. is an array object
 *    heap = A[0..A.heap-size - 1]
 *    1 ≤ A.heap-szie ≤ A.length
 * 2. root A[1]
 *    parent(i) = ceil(i / 2) - 1
 *    left(i) = 2 * i + 1
 *    right(i) = 2 * i + 2
 *
 * there are two kind of binary heaps: max-heaps and min-heaps
 *
 * in max-heap, the max-heap property
 * A[parent(i)] ≥ A[i]
 *
 * in min-heap, the min-heap property
 * A[parent(i)] ≤ A[i]
 */
int parent(int i) {
    return ceil(i / 2) - 1;
}

int left(int i) {
    return i * 2 + 1;
}

int right(int i) {
    return 2 * i + 2;
}

// maintain the max-heap property
// assume left(i) and right(i) are max-heap
// T(n) ≤ T(2n/3) + Ø(1)
void maxHeapify(int *A, int heapSize, int i) {
    int l = left(i);
    int r = right(i);
    int largest = i;
    if(l < heapSize && A[l] > A[largest]) {
        largest = l;
    }
    if(r < heapSize && A[r] > A[largest]) {
        largest = r;
    }
    if(largest != i) {
        swap(A, i, largest);
        maxHeapify(A, heapSize, largest);
    }
}

/**
 * in a binary tree, A[(floor(n/2) )..n] are all leaves of the tree
 *
 * T(n) = O(n)
 */
void buildMaxHeap(int *A, int len){
    int m = floor(len / 2) - 1;
    for(int i = m; i >= 0; i--) {
        maxHeapify(A, len, i);
    }
}

/**
 * T(n) = ø(n) + (n - 1)Ø(lgn)
 * T(n) = Ø(nlgn)
 */
int * heapSort(int *A, int len) {
    buildMaxHeap(A, len);
    for(int i = len - 1; i >= 1; i--) {
        swap(A, 0, i);
        maxHeapify(A, i, 0);
    }
    return A;
}

/**
 * proiority queue
 * 1. Set S
 * 2. elem has a value called key.
 *
 * max-priority queue
 * 1. insert(S, x)  S = S U {x}
 * 2. maximum(S)
 * 3. extract-max(S)
 * 4. increase-key(S, x, k) k ≥ x
 */
int heap_maximum(int *A) {
    return A[0];
}

int heap_extract_max(int *A, int len) {
    if(len < 1) {
        printf("heap under flow");
        return -1;
    }
    int max = A[0];
    A[0] = A[len - 1];
    len--;
    maxHeapify(A, len, 0);
    return max;
}

void heap_increase_key(int *A, int i, int key) {
    if(key < A[i]) {
        printf("new key is smaller");
        return;
    }
    A[i] = key;
    while(i > 1 && A[parent(i) < A[i]]) {
        swap(A, parent(i), i);
        i = parent(i);
    }
}

void max_heap_insert(int *A, int len, int key) {
    len++;
    A[len - 1] = -65535;
    heap_increase_key(A, len - 1, key);
}

/**
 * quicksort
 *
 * divide and conqure
 *
 * 1. divide
 *    A[p..r] to A[p..q-1] A[q] A[q+1..r], make a in A[p..q-1], a < A[q] and b in A[q+1..r], b > A[q]
 * 2. conqure
 *    recursive A[p..q-1] A[q+1..r]
 * 3. combine
 */
int * quickSort(int *A, int p, int r) {
    if(p >= r) {
        return A;
    }
    // divide
    int key = A[r];
    int j = p - 1;
    // at beginning of iteration
    // if p ≤ k ≤ j, A[k] ≤ key
    // if j + 1 ≤ k ≤ i - 1, A[k] > key
    // if k = r, A[k] = x
    for(int i = p; i <= r - 1; i++) {
        if(A[i] <= key) {
            j ++;
            swap(A, i, j);
        }
    }
    swap(A, j + 1, r);
    int q = j + 1;
    // conqure
    quickSort(A, p, q - 1);
    quickSort(A, q + 1, r);
    return A;
}

/**
 * counting sort
 * assumes, each of the n input elements is an integer in the range of 0 to k.
 *
 * a in A[0..n-1], belong to {0..k}
 */

int * countingSort(int *A, int *B,int len, int k) {
    int C[k];
    for(int i = 0; i < k; i++) {
        C[i] = 0;
    }
    for(int i = 0; i < len; i++) {
        C[A[i]] = C[A[i]] + 1;
    } // C[i] contains the number of elements equal to i
    for (int i = 1; i < k; i++) {
        C[i] = C[i] + C[i - 1];
    } // C[i] now contains the number of elements less than or equal to i
    for (int i = len - 1; i >= 0; i--) {
        B[C[A[i]] - 1] = A[i];
        C[A[i]] = C[A[i]] - 1;
    }
    return B;
}

/**
 * radix sort
 *
 * sorting on the least significant digit first.(smart idea)
 *
 * TODO
 */

/**
 * bucket sort
 */

int main (void) {
   int A1[] = { 5, 4, 3, 8, 10, 2 };
    printArray(insertionSort(A1, 6), 6);
    printf("\n");
   int A2[] = { 5, 4, 3, 8, 10, 2 };
    printArray(mergeSort(A2, 0, 5), 6);

    printf("\n");
    int A3[] = { 5, 4, 3, 8, 10, 2 };
    printArray(heapSort(A3, 6), 6);
    printf("\n");
    int A4[] = { 5, 4, 3, 8, 10, 2 };
    printArray(quickSort(A4, 0, 5), 6);
    printf("\n");
    int A5[] = { 5, 4, 3, 8, 10, 2 };
    int B[6];
    printArray(countingSort(A5, B, 6, 11), 6);
}
