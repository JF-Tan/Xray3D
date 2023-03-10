clear;clc;

col=1000;
row=1000;
z=200;
A=zeros(row,col,z);
filename='./voxel_float_1000_1000_200.raw';
fid=fopen(filename,'r');
for i=1:200
A(:,:,i)=fread(fid,[row,col],'float');
end

fclose(fid);

px = 1 : 1 : 1000;
py = 1 : 1 : 1000;
pz = 1 : 1 :  200;
E = A;
[X,Y,Z] = meshgrid(px,py,pz);
Vq = interp3(px,py,pz,E,X,Y,Z);
figure
slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
shading flat
colormap(gray)
alpha(0.8)