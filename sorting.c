#include <stdio.h>

#define ARRAYSIZE 8


void bubbleSrt(int unsortedArray[], int arraySize) {
  int temp;
  for(int i = 0; i < arraySize; i++) {
    for(int j = 0; j < (arraySize - 1); j++) {
      if(unsortedArray[j] > unsortedArray[j + 1]) {
        temp = unsortedArray[j];
        unsortedArray[j] = unsortedArray[j + 1];
        unsortedArray[j + 1] = temp;
      }
    }

  }
}

int main(void) {
  int array[ARRAYSIZE] = {12, 9, 4, 99, 120, 1, 3, 10};

  printf("before the sort:\n");     // Show results after the sort
   for(int i = 0; i < ARRAYSIZE; i++)
      printf("%d ", array[i]);
   printf("\n");

  bubbleSrt(array, ARRAYSIZE);

  printf("After the sort:\n");     // Show results after the sort
   for(int i = 0; i < ARRAYSIZE; i++)
      printf("%d ", array[i]);
   printf("\n");
  return 0;

}


