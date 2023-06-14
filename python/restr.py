import torch
import cv2
import matplotlib.pyplot as plt
import numpy as np
import math
import glob

img=cv2.imread('DATA.jpeg',0)
IMGH,IMGW=img.shape
plt.imshow(img)

VX=500
VY=500
VZ=200
RATIO = IMGH/VX

a=-30
tana = -0.5773502691896257
z_min = -100
b = (360/64)*0
index_map = np.zeros((VZ,VX,2))

for z in range(VZ):
    z_i = z + z_min
    x_off = z_i * tana * np.cos(b*math.pi/180)
    y_off = z_i * tana * np.sin(b*math.pi/180)
    index_map[z,:,0]=np.linspace(0,VX,VX)*RATIO + x_off
    index_map[z,:,1]=np.linspace(0,VX,VX)*RATIO + y_off
    index_map[index_map<0]=0
    index_map[index_map>IMGH-1]=0

mapx = np.zeros((VX,VY))
mapy = np.zeros((VX,VY))