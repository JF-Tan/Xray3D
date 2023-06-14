clear;clc;
I = imread('../0/1.tif');
[IMAGE_X,IMAGE_Y]=size(I);
%% =========== parameter setting =============
VOXEL_X = 1000;
VOXEL_Y = 1000;
VOXEL_Z = 200;
ratio = IMAGE_X / VOXEL_X;
%% =========== generate index map ===========
a = -30;
tana = -0.577350269189626;
zMin = -100;
% 
% index_map=zeros(64,VOXEL_Z,VOXEL_X,2);
% for k=1:64
%     b=(360/64)*(k);
%     for z=1:VOXEL_Z
%         z_i = z + zMin;
%         x_offset = z_i * tana * cos(b*pi/180);
%         y_offset = z_i * tana * sin(b*pi/180);
%         index_map(k,z,:,1) =linspace(1,VOXEL_X,VOXEL_X)*ratio+ x_offset;
%         index_map(k,z,:,2) =linspace(1,VOXEL_X,VOXEL_X)*ratio+ y_offset;
%         index_map(index_map<1)=1;
%         index_map(index_map>IMAGE_X)=1;
%     end
% end
%% ========== intrp pixel  ===========
load('offset_map_v2.mat');
voxel_space  = zeros(VOXEL_X,VOXEL_Y,VOXEL_Z);
tic
for k=1:64
    disp(['process' num2str(k*100/64)])
    I = imread(['../0/' num2str(k) '.tif']);
    I=adapthisteq(I);
    for z=1:VOXEL_Z
        voxel_space(1:VOXEL_X,1:VOXEL_Y,z) =voxel_space(1:VOXEL_X,1:VOXEL_Y,z) + double(I(round(index_map(k,z,:,1)),round(index_map(k,z,:,2))));
    end
end
toc
%%========= imaging voxel space ========
% px = 1 : 1 : VOXEL_X;
% py = 1 : 1 : VOXEL_Y;
% pz = 1 : 1 : VOXEL_Z;
% 
% [X,Y,Z] = meshgrid(px,py,pz);
% Vq = interp3(px,py,pz,voxel_space,X,Y,Z);
% figure
% slice(X,Y,Z,Vq,[px(1) px(end)],[py(1) py(end)],[pz(1) pz(end)]);
% shading flat
% colormap(gray)
% alpha(0.6)

%%
for z=1:VOXEL_Z
   I = voxel_space(:,:,z);
   I= ( I-min(I(:)) )/(max(I(:))-min(I(:)));
   imwrite(uint8(I*255),['../result/' num2str(z) '.png']) ;
end

