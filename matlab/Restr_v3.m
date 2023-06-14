clear;clc;
%defination
K = 64;% num of images
VX = 1000;% voxel space x-axis length
VY = 1000;% voxel space y-axis length
VZ = 200;% voxel space z-axis length
VZMin = -100;% voxel space z-axis start layer
IX = 2246;% image x-axis length
IY = 2246;% image space y-axis length
a=25; % rotating angle
tana = tan(a*pi/180);% tan of rotating angle
ratio = IX/VX;

%calculate offset maps
offmap = zeros([K,VZ,2]);
for k=1:K
    b = (360/K)*k;
    for z=1:VZ
        z_i = z+VZMin;
        x_off = z_i * tana *cos(b*pi/180);
        y_off = z_i * tana *sin(b*pi/180);
        offmap(k,z,1) =x_off;
        offmap(k,z,2) =y_off;
    end
end

%core interp2
tic
voxel = zeros([VX,VY,VZ]);

for k=1:K
    x = imread(['../1/' num2str(k) '.tif']);
    for z=1:VZ
        bg =  zeros([VX,VY]);
        x_off=offmap(k,z,1);
        y_off=offmap(k,z,2);
        bg(round(y_off):end,round(x_off):end) = x(1:VY-round(y_off)+1,1:VX-round(x_off)+1);
        voxel(:,:,z)=voxel(:,:,z)+bg;
    end
    disp(['process:' num2str(k) '/' num2str(K)]);
end
toc

% %% save in z-axis
% for z=1:VZ
%    I = voxel(:,:,z);
%    I= ( I-min(I(:)) )/(max(I(:))-min(I(:)));
%    imwrite(uint8(I*255),['../result/' num2str(z) '.png']) ;
% end

%% save offmap 
fid = fopen('/home/tanee/hls_project/x_ray/offsets.h','w+');

for i = 1:200
    fprintf(fid,'%d,\n',round(offmap(1,i,1)-1));
    fprintf(fid,'%d,\n',round(offmap(1,i,2)-1));
end

fclose(fid);





