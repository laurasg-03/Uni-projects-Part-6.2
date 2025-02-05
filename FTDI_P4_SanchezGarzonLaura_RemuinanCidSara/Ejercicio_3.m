clc
clear all
close all
%% Modelado de histograma
[ima, MAP]=imread("Skin_gray_bw_560.tif");
ima=ind2gray(ima,MAP);% Importante pq no estaria cogiendo pixeles sino indices
ima=double(ima);
figure(1);imshow(ima, [min(min(ima)) max(max(ima))])
L=256;
figure,imhist(ima,MAP);axis tight

ima_proc1=modificacion_directa(ima,8,L);
ima_proc2=modificacion_directa(ima,32,L);
ima_proc3=modificacion_directa(ima,64,L);
ima_proc4=modificacion_directa(ima,128,L);

subplot(2,2,1);imhist(ima_proc1,MAP);axis tight
subplot(2,2,2);imhist(ima_proc2,MAP);axis tight
subplot(2,2,3);imhist(ima_proc3,MAP);axis tight
subplot(2,2,4);imhist(ima_proc4,MAP);axis tight

%%
[ima, MAP]=imread("Skin_gray_bw_1120.tif");
ima=ind2gray(ima,MAP);% Importante pq no estaria cogiendo pixeles sino indices
ima=double(ima);
figure(1);imshow(ima, [min(min(ima)) max(max(ima))])
L=256;
figure,imhist(ima,MAP);axis tight

ima_proc1=modificacion_directa(ima,8,L);
ima_proc2=modificacion_directa(ima,32,L);
ima_proc3=modificacion_directa(ima,64,L);
ima_proc4=modificacion_directa(ima,128,L);

subplot(2,2,1);imhist(ima_proc1,MAP);axis tight
subplot(2,2,2);imhist(ima_proc2,MAP);axis tight
subplot(2,2,3);imhist(ima_proc3,MAP);axis tight
subplot(2,2,4);imhist(ima_proc4,MAP);axis tight
