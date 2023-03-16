clear;clc;
I= (imread('1.tif'));
[H,W]=size(I);
%===========³£Êý====================
IMGING_H = 1000;
IMGING_W = 1000;
ratio_x =  H / IMGING_H;
ratio_y = W / IMGING_W;
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
voxelData = zeros(1,IMGING_H,IMGING_W,200);
%===============================
shootAngles=[(360/64)*(0),(360/64)*(32)];
imgs = ['01_filtered.bmp';'33_filtered.bmp'];
for k=1:2
%=====================================
shootAngle = shootAngles(k);
rotateAngle = -30;
I= double(imread(imgs(k,:)));
%=====================================
cosThita = cos(shootAngle*0.0175);
sinThita = sin(shootAngle*0.0175);
tanAlf   = tan(rotateAngle*0.0175);
%===========================
    for z=1:200
        zIndex = z + zMin;
        for y=1:IMGING_H
            for x=1:IMGING_W
                i = round((x*ratio_y+zIndex*tanAlf*cosThita) )  ;
                j = round((y*ratio_x+zIndex*tanAlf*sinThita) ) ;
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

EP=( EP*255/(  max(max(max(EP))) - min(min(min(EP)))  ));
% EP_Z_FIXED = zeros(size(EP));

px = 1 : 1 : IMGING_W;
py = 1 : 1 : IMGING_H;
pz = 1 : 1 : 200;
E=EP;
[X,Y,Z] = meshgrid(px,py,pz);
Vq = interp3(px,py,pz,E,X,Y,Z);
figure
slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
shading flat
colormap(gray)
alpha(0.6)
%% 



