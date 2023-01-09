str = input(":Enter the string : ");
words = str.split(" ");
for i in words:
    if(len(i)%2 == 0):
        print(i);