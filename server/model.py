from torchvision import models

import cv2
import torch
import torch.nn as nn
import torchvision.transforms as transforms
import numpy as np

def initialize():
  global device
  global transform
  global model
  global types

  device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
  transform = transforms.Compose([
    transforms.ToPILImage(),
    transforms.ToTensor()
  ])
  types = ['ic11', 'ic12', 'ic21', 'ic22', 'ic31', 'ic32']

  model = models.resnet50()
  for param in model.parameters():
    param.requires_grad = False
  model.fc = nn.Linear(2048, 6)
  model = model.to(device)

  checkpoint = torch.load('./model/model.pth')
  model.load_state_dict(checkpoint['model_state_dict'])
  model.eval()

def predict(path):
  image = cv2.imread(path)
  image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
  image = transform(image)

  image = torch.tensor(image, dtype=torch.float32)
  image = image.unsqueeze(0)
  image = image.to(device)

  outputs = model(image)
  outputs = torch.sigmoid(outputs)
  outputs = outputs.detach().cpu()

  predict_result = {}

  for i in range(len(outputs[0])):
    predict_result[types[i]] = outputs[0][i].item()
  return predict_result

