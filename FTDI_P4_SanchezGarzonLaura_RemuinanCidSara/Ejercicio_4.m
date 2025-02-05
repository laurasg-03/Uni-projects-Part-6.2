%% EJERCICIO 4
%para visualizar la imagen escalada, deberá definir el rango de representación en el imshow o realizar un casting a uint8.

% Estirando el histograma
[ima, MAP]=imread("Skin_gray_bw_560.tif");
%ima=ind2gray(ima,MAP);% Importante pq no estaria cogiendo pixeles sino indices
%ima=double(ima);
figure(1);imshow(ima, [min(min(ima)) max(max(ima))])
% Ya está en uint8
r_k=ima;
nM=255;
nm=0;
m=255;
s_k=(r_k - m)*((nM-nm)/(M - m))+(n.*m);

