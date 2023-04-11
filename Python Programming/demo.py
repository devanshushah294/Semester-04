import matplotlib.pyplot as plt
import random
values = [i for i in range(1, 101, 10)]
random.shuffle(values)
ax = plt.axes()
ax.set_xlim([0, 10])
ax.set_ylim([0, 100])
ax.set_xticks([i for i in range(0, 11)])
ax.set_yticks([i for i in range(0, 101, 10)])
ax.grid()
plt.plot(range(1, 11), values,linestyle)
plt.show()

plt.pie(values)
plt.show()

plt.bar(range(1, 11), values)
plt.show()

plt.barh(range(1, 11), values)
plt.show()
