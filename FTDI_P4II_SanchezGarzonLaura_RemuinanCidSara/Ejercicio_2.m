close all
clear all
clc
%% Umbralización global
[ima, MAP]=imread("MRI_gray.jpg");
figure(1);
subplot(2,1,1);imshow(ima, MAP);
ima=double(ima);
subplot(2,1,2);imhist(uint8(ima));axis tight

% Umbralizacion por niveles
rmax=max(max(ima));
rmin=min(min(ima));
T_init=(rmax-rmin)/2;
T_init


% m1=mean(ima[:T_init])
% Tout=(m1+m2)/2;