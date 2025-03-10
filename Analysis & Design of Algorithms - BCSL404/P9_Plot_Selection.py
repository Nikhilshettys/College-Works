import matplotlib.pyplot as plt

n_values = [6000, 7000, 8000, 9000, 10000]
time_taken = [0.012000, 0.021000, 0.025000, 0.031000, 0.052000]

plt.plot(n_values, time_taken, marker='o')
plt.title('Selection Sort Time Complexity')
plt.xlabel('Number of Elements (n)')
plt.ylabel('Time taken (seconds)')
plt.grid(True)
plt.show()