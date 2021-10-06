#include <iostream>
#include <stdlib.h>
#include <time.h>

using namespace std;

int main(){
    srand(time(NULL));
    for (int i = 0;i < 10; i++){
        int a = rand() % 3 + 1;
        cout << a << endl;
    }


    return 0;
}
