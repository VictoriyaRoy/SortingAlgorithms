#include "sorting.h"

void swap(int *xp, int *yp)
{
    //Swap two elements in array
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

int selectionSort(int array[], int len){
    int min_index, comp = 0;

    for (int i = 0; i < len - 1; i++){
        min_index = i;
        for (int j = i+1; j < len; j++){
            if (array[j] < array[min_index])
                min_index = j;
            comp++;
        }
        swap(&array[min_index], &array[i]);
    }
    return comp;
}


int insertionSort(int array[], int len){
    int key, j, comp = 0;
    for (int i = 1; i < len; i++){
        key = array[i];
        for (j = i - 1; j >= 0; j--){
            comp++;
            if (array[j] > key)
                array[j + 1] = array[j];
            else
                break;
        }
        array[j + 1] = key;
    }
    return comp;
}


int merge(int arr[], int left, int mid, int right)
{
    int i, j, k, comp = 0;
    int len1 = mid - left + 1;
    int len2 = right - mid;
    int L[len1], R[len2];

    for (i = 0; i < len1; i++)
        L[i] = arr[left + i];
    for (j = 0; j < len2; j++)
        R[j] = arr[mid + 1 + j];

    i = 0;
    j = 0;
    k = left;
    while (i < len1 && j < len2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        }
        else {
            arr[k] = R[j];
            j++;
        }
        comp++;
        k++;
    }

    while (i < len1) {
        arr[k] = L[i];
        i++;
        k++;
    }

    while (j < len2) {
        arr[k] = R[j];
        j++;
        k++;
    }
    return comp;
}

/* left is for starting index and right is ending index of the
sub-array of array to be sorted */
int mergeSort(int array[], int left, int right){
    int comp = 0;
    if (left < right) {
        int mid = left + (right - left) / 2;
        comp += mergeSort(array, left, mid);
        comp += mergeSort(array, mid + 1, right);
        comp += merge(array, left, mid, right);
    }
    return comp;
}

int shellSort(int array[], int len){
    int comp = 0;
    for (int gap = len / 2; gap > 0; gap /= 2){
        for (int i = gap; i < len; i += 1){
            int temp = array[i];
            int j;
            for (j = i; j >= gap; j -= gap){
                comp += 1;
                if (array[j - gap] > temp){
                    array[j] = array[j - gap];
                } else {
                    break;
                }
            }
            array[j] = temp;
        }
    }
    return comp;
}