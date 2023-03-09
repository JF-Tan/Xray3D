clear;clc;
re_size = 2400;
I= (imread('./0/1.tif'));

[H,W]=size(I);
ratio = H/1000;
%===========³£Êý====================
xMin = 1;
xMax = 1000;
yMin = 1;
yMax = 1000;
zMin = -100;
zMax = 99;
zRange = zMax - zMin + 1;
centX = 500;
centY = 500;
xMax = xMax - xMin;
yMax = yMax - yMin;
xMin = 1;
yMin = 1;
voxelData = zeros(1,1000,1000,200);
for k=1:1
%=====================================
shootAngle = (360/64)*(k);
rotateAngle = 30;
I= double(imread('./0/1.tif'));
%=====================================
cosThita = cos(shootAngle*0.0175);
sinThita = sin(shootAngle*0.0175);
tanAlf   = tan(rotateAngle*0.0175);
%===========================
for z=1:200
    zIndex = z + zMin;
    for y=1:1000
        for x=1:1000
            i = round((x+zIndex*tanAlf*cosThita) *ratio)  ;
            j = round((y+zIndex*tanAlf*sinThita) *ratio) ;
            if(i<1||j<1||i>(H)||j>W)
                continue;
            end
            val = I(j,i);
            voxelData(k+1,x,y,z)=val;
        end
    end
end
end
%%=================== ³ÉÏñ ================================

EP = squeeze(sum(voxelData));

px = 1 : 1 : 1000;
py = 1 : 1 : 1000;
pz = 1 : 1 : 200;
E = permute(EP,[2,1,3]);
[X,Y,Z] = meshgrid(px,py,pz);
Vq = interp3(px,py,pz,E,X,Y,Z);
figure
slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
shading flat
colormap(gray)