clear;clc;
I = (imread('1.tif'));
II=double(Xeq(I))/65535;  
% I = double(I)/65535;
II = log(1.1+II*70);
x1 = double(I)/65535;
x2 = II;
II = x1*1.2+x2*0.2;
II = 1-II/(max(max(II))-min(min(II)));
imshow(uint8(II*255))