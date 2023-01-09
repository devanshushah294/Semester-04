# len
str = input("Enter the String : ");
print(len(str));

# count
count = str.count('h');
print(count);

# title
print(str.title());
# upper
print(str.upper());
# lower
print(str.lower());

# istitle()
print(str.istitle());
# isupper()
print(str.isupper());
# islower()
print(str.islower());

str = input("Enter the string : ");

# strip()
print(str.strip());
print(str.lstrip());
print(str.rstrip());

str = input("Enter the string : ");
print(str.find("world"));
print(str.rfind('a'));
print(str.find('a'));
print(str.replace("world","darshan"));
print(str.index("devanshu"));
print(str.isalpha());
print(str.isalnum());
print(str.isdigit());
print(str[0:10:1]);
print(str[::-1]);#reverse string

print(str.split(" "))
