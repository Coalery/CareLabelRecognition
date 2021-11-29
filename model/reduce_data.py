from os import listdir, remove
from os.path import isfile, join

mypath = 'data/train/'
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

for i in range(2000):
  remove(join(mypath, onlyfiles[i]))