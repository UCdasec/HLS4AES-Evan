import json
import h5py
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker

settings_file = 'temp/settings_example.json'
with open(settings_file) as json_file:
    data = json.load(json_file)
    traceFilePath = 'temp/' + data["traceFileName"]
    print(str(traceFilePath))

with h5py.File(traceFilePath, 'r') as file:
    print("Getting dataset")
    dataset = file['leakages']

# Extracting the data from the dataset\
    print("Getting data")
    data = dataset[:, :]

# Reshape the data to a 1D array
print("Data reshape")
print(data.shape)


data = data.reshape(-1)
print(data.shape)
print("Figure")
x = []
y = []
ctr = 0
for datap in data:
    x.append(ctr)
    y.append(datap)
    ctr += 1

plt.figure(figsize=(10, 6))
plt.plot(x, y)
plt.xlabel("Timestamp")

print("Tight_Layout")
plt.tight_layout()
print("Savefig")
plt.savefig(traceFilePath.replace('.h5', '.png'))
print("Show")
#plt.show() 