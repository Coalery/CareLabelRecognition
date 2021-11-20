from os import listdir
from os.path import isfile, join

import pandas as pd

mypath = 'data/train/'
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

data = [['id', 'type', 'ic11', 'ic12', 'ic21', 'ic22', 'ic31', 'ic32', 'ic41', 'ic42']]

for fileName in onlyfiles:
  cur = [fileName, [], 0, 0, 0, 0, 0, 0, 0, 0]
  for idx, info in enumerate(fileName[-8:-4]):
    iInfo = int(info)
    if iInfo != 0:
      cur[1].append(f'ic{idx+1}{iInfo}')
      cur[2 + idx * 2 + iInfo - 1] = 1
  data.append(cur)

df = pd.DataFrame(data)
df.to_csv("data.csv", header=False, index=False)