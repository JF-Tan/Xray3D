clear;clc;

x = imread('/home/tanee/GitHub/Xray3D/asserts/2/1.bmp');
x = rgb2gray(x);

fid = fopen('1.txt','w+');

for i=1:1000
   for j=1:1000 
       fprintf(fid,'%d,\n',x(i,j));
   end
end

fclose(fid);