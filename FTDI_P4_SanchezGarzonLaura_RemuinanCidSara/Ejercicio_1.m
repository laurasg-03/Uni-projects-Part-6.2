clc
clear all
close all
%% EJERCICIO 1 comparando los resultados de las tres aproximaciones para la realización de operadores puntuales
% Modificación directa de los píxeles de la imagen
[ima, MAP]=imread("Skin_gray_bw_560.tif");
ima=ind2gray(ima,MAP);% Importante pq no estaria cogiendo pixeles sino indices
ima=double(ima);
figure(1);imshow(ima, [min(min(ima)) max(max(ima))])
L=256;

ima_proc1=modificacion_directa(ima,8,L);
ima_proc2=modificacion_directa(ima,32,L);
ima_proc3=modificacion_directa(ima,64,L);
ima_proc4=modificacion_directa(ima,128,L);

energia_double1=calcular_energia(ima_proc1);
energia_double2=calcular_energia(ima_proc2);
energia_double3=calcular_energia(ima_proc3);
energia_double4=calcular_energia(ima_proc4);

figure(2)
subplot(4,4,1);imshow(ima_proc1, MAP);title([ sprintf('p2p transf c=%d', 8) sprintf('E= %g', energia_double1) ])
subplot(4,4,2);imshow(ima_proc2, MAP);title([ sprintf('p2p transf c=%d', 32) sprintf('E= %g', energia_double2) ])
subplot(4,4,3);imshow(ima_proc3, MAP);title([ sprintf('p2p transf c=%d', 64) sprintf('E= %g', energia_double3) ])
subplot(4,4,4);imshow(ima_proc4, MAP);title([ sprintf('p2p transf c=%d', 128) sprintf('E= %g', energia_double4) ])

% Modificación del vector de valores de la imagen 
ima_proc11=modificacion_vector_valores(ima,8,L);
ima_proc22=modificacion_vector_valores(ima,32,L);
ima_proc33=modificacion_vector_valores(ima,64,L);
ima_proc44=modificacion_vector_valores(ima,128,L);% Sumamos 1 porque el valor 0 corresponde a s(1)
energia_double11=calcular_energia(ima_proc11);
energia_double22=calcular_energia(ima_proc22);
energia_double33=calcular_energia(ima_proc33);
energia_double44=calcular_energia(ima_proc44);

subplot(4,4,5);imshow(ima_proc11, MAP);title([ sprintf('p2p transf c=%d', 8) sprintf('E= %g', energia_double11) ])
subplot(4,4,6);imshow(ima_proc22, MAP);title([ sprintf('p2p transf c=%d', 32) sprintf('E= %g', energia_double22) ])
subplot(4,4,7);imshow(ima_proc33, MAP);title([ sprintf('p2p transf c=%d', 64) sprintf('E= %g', energia_double33) ])
subplot(4,4,8);imshow(ima_proc44, MAP);title([ sprintf('p2p transf c=%d', 128) sprintf('E= %g', energia_double44) ])

% Modificación del vector de la VLT
MAP=255.*MAP;

map1=min(MAP+8,L-1);
map2=min(MAP+32,L-1);
map3=min(MAP+64,L-1);
map4=min(MAP+128,L-1);

map1=map1/255;
map2=map2/255;
map3=map3/255;
map4=map4/255;
energia_double111=calcular_energia(ima);
energia_double222=calcular_energia(ima);
energia_double333=calcular_energia(ima);
energia_double444=calcular_energia(ima);

subplot(4,4,9);imshow(ima, map1);title([ sprintf('p2p transf c=%d', 8) sprintf('E= %g', energia_double111) ])
subplot(4,4,10);imshow(ima, map2);title([ sprintf('p2p transf c=%d', 32) sprintf('E= %g', energia_double222) ])
subplot(4,4,11);imshow(ima, map3);title([ sprintf('p2p transf c=%d', 64) sprintf('E= %g', energia_double333) ])
subplot(4,4,12);imshow(ima, map4);title([ sprintf('p2p transf c=%d', 128) sprintf('E= %g', energia_double444) ])


n=[0:255];
f1=min(n+8,L-1);
f2=min(n+32,L-1);
f3=min(n+64,L-1);
f4=min(n+128,L-1);

subplot(4,4,13);plot(f1);
subplot(4,4,14);plot(f2);
subplot(4,4,15);plot(f3);
subplot(4,4,16);plot(f4);
