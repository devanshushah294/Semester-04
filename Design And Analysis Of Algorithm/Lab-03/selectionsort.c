#include <stdio.h>
void main()
{
  int nums[5] = {112, 11, 125, 138, 1};
  int i = 0;
  int nums_length = (sizeof(nums) / sizeof(nums[0]));
  for (i = 0; i < nums_length; i++)
  {
    int minj = i;
    int minx = nums[i];
    int j = i + 1;
    for (j = i + 1; j <= nums_length; j++)
    {
      if (nums[j] < minx)
      {
        minj = j;
        minx = nums[j];
      }
      nums[minj] = nums[i];
      nums[i] = minx;
    }
  }
  for (i = 0; i < nums_length; i++)
  {
    printf("%d\n", nums[i]);
  }
}