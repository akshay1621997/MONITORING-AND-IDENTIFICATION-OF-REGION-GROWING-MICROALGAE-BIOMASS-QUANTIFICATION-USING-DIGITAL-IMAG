clear all; clc; close all;
original=imread('E:\DIP\Pavendan\c.vulgaris.jpg');

original_bw=rgb2gray(original);

sp=imnoise(original_bw,'salt & pepper',0.05);
wiener_sp=wiener2(sp);
gaussian=imnoise(original_bw,'gaussian',0.05);
wiener_gaussian=wiener2(gaussian);
poisson=imnoise(original_bw,'poisson');
wiener_poisson=wiener2(poisson);
speckle=imnoise(original_bw,'speckle',0.05);
wiener_speckle=wiener2(speckle);

figure, subplot(321);imshow(original);title('Original RGB Image');
subplot(322);imshow(original_bw);title('Original Gray-scale Image');
subplot(323);imshow(wiener_sp);title('Wiener Filtered Salt and Pepper Noise Image');
subplot(324);imshow(wiener_gaussian);title('Wiener Filtered Gaussian Noise Image');
subplot(325);imshow(wiener_poisson);title('Wiener Filtered Poisson Noise Image');
subplot(326);imshow(wiener_speckle);title('Wiener Filtered Speckle Noise Image');


