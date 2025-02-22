
"""
!!! This has to be run OUTSIDE the project environment !!!
In our environment we have tensorflow while the medmnist data extraction is optimized on pyTorch. Medmnist installed
together with tensorflow raises various errors thus it is better to keep the data import outside the project
environment.
"""


import torch
import torch.utils.data as data
import medmnist
from medmnist import INFO
import pickle
import numpy as np

print("---------------------- Import, preprocess and load data ----------------------")

# Import data
data_flag = 'pathmnist'
# data_flag = 'breastmnist'
download = True

if data_flag not in ['pathmnist', 'breastmnist']:
    raise ValueError("The data_flag should be either 'pathmnist' or 'breastmnist'.")

NUM_EPOCHS = 3
BATCH_SIZE = 128

info = INFO[data_flag]
task = info['task']
n_channels = info['n_channels']
n_classes = len(info['label'])

DataClass = getattr(medmnist, info['python_class'])

# Load data
train_dataset = DataClass(split='train', download=download)
val_dataset = DataClass(split='val', download=download)
test_dataset = DataClass(split='test', download=download)

# Set seed for reproducibility
torch.manual_seed(123)

# Encapsulate data into dataloader form
train_loader = data.DataLoader(dataset=train_dataset, batch_size=BATCH_SIZE, shuffle=True)
val_loader = data.DataLoader(dataset=val_dataset, batch_size=2*BATCH_SIZE, shuffle=False)
test_loader = data.DataLoader(dataset=test_dataset, batch_size=2*BATCH_SIZE, shuffle=False)

# Get out images and information
X_train = train_loader.dataset.imgs
y_train = np.reshape(train_loader.dataset.labels, (len(train_loader.dataset.labels)))
X_val = val_loader.dataset.imgs
y_val = np.reshape(val_loader.dataset.labels, (len(val_loader.dataset.labels)))
X_test = test_loader.dataset.imgs
y_test = np.reshape(test_loader.dataset.labels, (len(test_loader.dataset.labels)))

print("---------- Store data ----------")

if data_flag == "pathmnist":
    file_name1 = 'X_train.pickle'
    file_name2 = 'y_train.pickle'
    file_name3 = 'X_val.pickle'
    file_name4 = 'y_val.pickle'
    file_name5 = 'X_test.pickle'
    file_name6 = 'y_test.pickle'

elif data_flag == 'breastmnist':
    file_name1 = 'X_train_b.pickle'
    file_name2 = 'y_train_b.pickle'
    file_name3 = 'X_val_b.pickle'
    file_name4 = 'y_val_b.pickle'
    file_name5 = 'X_test_b.pickle'
    file_name6 = 'y_test_b.pickle'

else:
    raise ValueError("The data_flag should be either 'pathmnist' or 'breastmnist'.")


with open(file_name1, 'wb') as f:
    pickle.dump(np.array(X_train), f, pickle.HIGHEST_PROTOCOL)

with open(file_name2, 'wb') as f:
    pickle.dump(y_train, f, pickle.HIGHEST_PROTOCOL)

with open(file_name3, 'wb') as f:
    pickle.dump(X_val, f, pickle.HIGHEST_PROTOCOL)

with open(file_name4, 'wb') as f:
    pickle.dump(y_val, f, pickle.HIGHEST_PROTOCOL)

with open(file_name5, 'wb') as f:
    pickle.dump(X_test, f, pickle.HIGHEST_PROTOCOL)

with open(file_name6, 'wb') as f:
    pickle.dump(y_test, f, pickle.HIGHEST_PROTOCOL)


print("---------- End ----------")