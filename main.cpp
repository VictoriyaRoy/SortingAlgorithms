#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <iomanip>

#include "sorting.h"

using namespace std;

void generate_array(int array[], int length, int exp)
{
    switch (exp) {
        case 1:
            for (int i = 0; i < length ;i++){
                array[i] = rand();
            }
            break;

        case 2:
            for (int i = 0; i < length; i++){
                array[i] = i + 1;
            }
            break;

        case 3:
            for (int i = 0; i < length; i++){
                array[i] = length - i;
            }
            break;

        case 4:
            for (int i = 0; i < length; i++){
                array[i] = rand() % 3 + 1;
            }
    }
}

void printArray(int arr[], int n)
{
    for (int i=0; i<n; i++)
        cout << arr[i] << " ";
}

void clear_results(double time[4], long comp[4]) {
    for (int i = 0; i < 4; i++){
        time[i] = 0;
        comp[i] = 0;
    }
}


void print_results(int power, double time[4], long comp[4]) {
    cout << "2^" << power << " ";
    for (int i = 0; i < 4; i++){
        cout << fixed << time[i] << " ";
    }
    cout << "| ";
    for (int i = 0; i < 4; i++){
        cout << comp[i] << " ";
    }
    cout << endl;
}

void find_average(double time[4], long comp[4], int repeat) {
    for (int i =0; i < 4; i++){
        time[i] = time[i] / repeat;
        comp[i] = comp[i] / repeat;
    }
}

void make_copy(int from[], int to[], int length){
    for (int i = 0; i < length; i++){
        to[i] = from[i];
    }
}

int main()
{
    srand(time(NULL));
    int len;
    double time[] = {0, 0, 0, 0};
    long comp[] = {0, 0, 0, 0};
    int repeat[] = {5, 1, 1, 3};
    clock_t start, end;

    for (int exp = 1; exp <= 4; exp++){
        cout << "Experiment " << exp << endl;
        for (int i = 7; i <= 15; i++){
            len = (int) pow(2, i);
            int array[len];
            int copy_array[len];

            for (int j = 0; j < repeat[exp - 1]; j++){
                generate_array(array, len, exp);

                make_copy(array, copy_array, len);
                start = clock();
                comp[0] += selectionSort(copy_array, len);
                end = clock();
                time[0] += ((double) (end - start)) / CLOCKS_PER_SEC;

                make_copy(array, copy_array, len);
                start = clock();
                comp[1] += insertionSort(copy_array, len);
                end = clock();
                time[1] += (double) (end - start) / CLOCKS_PER_SEC;

                make_copy(array, copy_array, len);
                start = clock();
                comp[2] += mergeSort(copy_array, 0, len);
                end = clock();
                time[2] += (double) (end - start) / CLOCKS_PER_SEC;

                make_copy(array, copy_array, len);
                start = clock();
                comp[3] += shellSort(copy_array, len);
                end = clock();
                time[3] += (double) (end - start) / CLOCKS_PER_SEC;
            }

            find_average(time, comp, repeat[exp - 1]);
            print_results(i, time, comp);
            clear_results(time, comp);
        }
        cout << endl;
    }


    return 0;
}
