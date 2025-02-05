clc
clear all
close all
%% Comparar la eficiencia de las tres aproximaciones para la realización de operadores puntuales
% Me reporto en tu zona

[ima, MAP]=imread("Skin_gray_bw_560.tif");
L=256;

tic
for i = 1:1000
    modificacion_directa(ima,8,L);
end
toc
%figure;imshow(ima_proc1, MAP)

tic
for i = 1:1000
    modificacion_vector_valores(ima,8,L);
end
toc
%figure;imshow(ima_proc2, MAP)



tic
for i = 1:1000
    map1=255.*MAP;
    min(map1+8,L-1);
    map1=map1/255;
end
toc

%figure;imshow(ima, map1)

[ima, MAP]=imread("Skin_gray_bw_1120.tif");
L=256;

tic
for i = 1:1000
    modificacion_directa(ima,8,L);
end
toc
%figure;imshow(ima_proc1, MAP)

tic
for i = 1:1000
    modificacion_vector_valores(ima,8,L);
end
toc
%figure;imshow(ima_proc2, MAP)



tic
for i = 1:1000
    map1=255.*MAP;
    min(map1+8,L-1);
    map1=map1/255;
end
toc

%figure;imshow(ima, map1)