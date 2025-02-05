clc
close all
clear all
%% Ejercicio 1: obtención del negativo
[ima, MAP]=imread("MRI_pseudo_colored.jpg");
figure(1);
subplot(2,1,1);imshow(ima, MAP);
ima=double(ima);
subplot(2,1,2);imhist(uint8(ima));axis tight

red = ima(:, :, 1);
green = ima(:, :, 2);
blue = ima(:, :, 3);

figure(2)
subplot(2,3,1);imshow(uint8(red));
subplot(2,3,2);imshow(uint8(green));
subplot(2,3,3);imshow(uint8(blue));

subplot(2,3,4);imhist(uint8(red));axis tight
subplot(2,3,5);imhist(uint8(green));axis tight
subplot(2,3,6);imhist(uint8(blue));axis tight

L_red=max(max(uint8(red)));
s_k_red=(L_red-1)-uint8(red);
L_green=max(max(uint8(red)));
s_k_green=(L_green-1)-uint8(green);
L_blue=max(max(uint8(blue)));
s_k_blue=(L_blue-1)-uint8(blue);

figure(3);
subplot(2,3,1);imshow(s_k_red);
subplot(2,3,2);imshow(s_k_green);
subplot(2,3,3);imshow(s_k_blue);

subplot(2,3,4);imhist(s_k_red);axis tight
subplot(2,3,5);imhist(s_k_green);axis tight
subplot(2,3,6);imhist(s_k_blue);axis tight

figure(4)
L_imagenp=max(max(uint8(ima)));
s_k_imagenp=(L_imagenp-1)-uint8(ima);
subplot(2,1,1);imshow(s_k_imagenp);
subplot(2,1,2);imhist(s_k_imagenp);axis tight