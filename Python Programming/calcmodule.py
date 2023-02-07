def add(n1,n2):
  return n1+n2;
def sub(n1,n2):
  return n1-n2;
def mul(n1,n2):
  return n1*n2;
def div(n1,n2):
  try:
    ans=n1/n2
    print(ans);
  except ZeroDivisionError:
    print("Cant devide by zero");
print(div(2,0));