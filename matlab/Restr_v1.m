clear;clc;

I= (imread('./0/1.tif'));
%============= pre-processing ======
I=double(adapthisteq(I));
I =255- 220*I/( max(max(I))-min(min(I)) );
[H,W]=size(I);
%===========³£Êý====================
IMGING_H = 1000;
IMGING_W = 1000;
ratio_y = H/IMGING_H ;
ratio_x = W/IMGING_W ;
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
for k=0:0
%=====================================
shootAngle = (360/64)*(k);
rotateAngle = -30;
%=====================================
cosThita = cos(shootAngle*0.0175);
sinThita = sin(shootAngle*0.0175);
tanAlf   = tan(rotateAngle*0.0175);
%===========================
    for z=1:200
        zIndex = z + zMin;
        for y=1:IMGING_H
            for x=1:IMGING_W
                i = round((x+zIndex*tanAlf*cosThita) *ratio_y)  ;
                j = round((y+zIndex*tanAlf*sinThita) *ratio_x) ;
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

E =squeeze(voxelData);% squeeze(sum(voxelData));

px = 1 : 1 : IMGING_W;
py = 1 : 1 : IMGING_H;
pz = 1 : 1 : 200;
E= permute(E,[2,1,3]);
[X,Y,Z] = meshgrid(px,py,pz);
Vq = interp3(px,py,pz,E,X,Y,Z);
figure
slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
shading flat
colormap(gray)
alpha(0.5)
%% 



