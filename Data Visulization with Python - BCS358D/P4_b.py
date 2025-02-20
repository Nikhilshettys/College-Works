# Write a Python program to Demonstrate how to Draw a Scatter Plot using Matplotlib.

import matplotlib.pyplot as plt

x1 = [89, 43, 36, 36, 95, 10, 66, 34, 38, 20]
y1 = [21, 46, 3, 35, 67, 95, 53, 8, 58, 10]

plt.scatter(x1, y1, color='pink', linewidths=2, marker="s", edgecolor='green', s=50)
plt.title('Simple Scatter Plot')
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.show()
