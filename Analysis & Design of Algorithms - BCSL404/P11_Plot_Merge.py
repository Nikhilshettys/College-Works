import matplotlib.pyplot as plt

n_values = [6000, 7000, 8000, 9000, 10000, 11000, 12000, 13000, 15000]
time_taken = [0.000509, 0.000653, 0.000816, 0.001573, 0.001589, 0.002762, 0.001984, 0.002971, 0.003573]

plt.plot(n_values, time_taken, marker='o')
plt.title('Merge Sort Time Complexity')
plt.xlabel('Number of Elements (n)')
plt.ylabel('Time taken (seconds)')
plt.grid(True)
plt.show()