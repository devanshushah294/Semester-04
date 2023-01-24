#include <stdio.h>
void pivot(int t[], int l)
{
  int p, k, i, j;
  p = t[0];
  i = 0;
  j = sizeof(t) / sizeof(int);
  k = t[i];
  l = t[j];
  do
  {
    k++;
  } while (t[k] < p || k <= p);
}
void quicksort(t)
{
  int l;
  pivot(t, l);
  int halfarray[] = t[1, ]
}
void main()
{
  int t[] = {19, 17, 15, 12, 16, 18, 4, 11, 13};
  int n = sizeof(t) / sizeof(int);
  if (n > 1)
  {
    quicksort(t);
  }
}