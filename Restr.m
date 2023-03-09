clear;clc;
re_size = 1000;
I= (imread('./0/1.tif'));I = imresize(I,[re_size,re_size]);
[H,W]=size(I);
%===========³£Êý====================
xMin = 1;
xMax = W+1;
yMin = 1;
yMax = H+1;
zMin = -149;
zMax = 150;
zRange = zMax - zMin + 1;
centX = W / 2.0;
centY = H / 2.0;
xMax = xMax - xMin;
yMax = yMax - yMin;
xMin = 1;
yMin = 1;
voxelData = zeros(1,W,H,zRange);
for k=1:1
%=====================================
shootAngle = (360/64)*(k);
rotateAngle = 30;
I= double(imread('./0/1.tif')); I = imresize(I,[re_size,re_size]);
%
%=====================================
cosThita = cos(shootAngle*0.0175);
sinThita = sin(shootAngle*0.0175);
tanAlf   = tan(rotateAngle*0.0175);
%===========================
for z=1:zRange
    zIndex = z + zMin;
    for y=yMin:yMax
        for x=(xMin):xMax
            dx = (x-centX);
            dy = (y-centY);
            i = round(x+zIndex*tanAlf*cosThita);
            j = round(y+zIndex*tanAlf*sinThita);
            if(i<1||j<1||i>(W)||j>H)
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

px = xMin : 1 : xMax;
py = yMin : 1 : yMax;
pz = 1 : 1 : zRange;
E = permute(EP,[2,1,3]);
[X,Y,Z] = meshgrid(px,py,pz);
Vq = interp3(px,py,pz,E,X,Y,Z);
figure
slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
shading flat
colormap(gray)