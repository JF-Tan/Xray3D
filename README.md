# Xray3D

## 1.Introduction
## This is a dev-repo in CT-Xray3D Reconstruction algorithm

`author`:Tanee(taneey0519@gmail.com)

install this repo with :
```
git clone https://github.com/JF-Tan/Xray3D.git
```

This repo developed the CT-Xray3D Reconstruction algorithm with 3 language programs :cpp、Matlab、Python.About them you can follow the tutorial at:
- cpp:https://www.w3schools.com/cpp/
- Matlab:https://ww2.mathworks.cn/support/learn-with-matlab-tutorials.html
- python:https://www.w3schools.com/python/

## 2.Repo Structure

Here we explain this repo's structure .

```
.
├── asserts
│   ├── 0
│   ├── 1
│   ├── 2
│   └── results
├── cpp
│   ├── build
│   ├── include
│   ├── src
│   └── test
├── matlab
└── python
```
### asserts
We put the images in the `asserts` directory,which contains 4 subdirectories:
- 0:includes the .tif original files (16bit)
- 1:includes the .tif  files in 1000x1000 size (16bit)
- 2:includes the .bmp  files in 1000x1000 size (8bit)
- results:includes voxel slice images in Z-axis side.


### cpp
This  directory contains a Cmake project.

To build this Cpp project,please follow:

`step1. install dependencies (like opencv,cmake etc.)`

eg.To install opencv

 install with apt tools.
```
sudo apt install libcv-dev
sudo apt-get install libopencv-dev
```
or install with source code:
https://opencv.org/releases/

`step2. build xray3d project`
```
mkdir -p cpp/build
cd cpp/build
cmake .. && make
```


