#include <stdio.h>
int binarySearch(int arr[], int x, int i, int j)
{
    if (arr[j] < x)
    {
        return -1;
    }
    while (i < j)
    {
        int k = (i + j) / 2;
        if (x <= arr[k])
        {
            j = k;
        }
        else
        {
            i = k + 1;
        }
    }
    if (arr[i] == x)
    {
        return i;
    }
    return -1;
}
void main()
{
    int x;
    printf("Enter the number you want to find : ");
    scanf("%d", &x);
    int arr[] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
    int index = binarySearch(arr, x, 0, 9);
    printf("index = %d", index);
}
