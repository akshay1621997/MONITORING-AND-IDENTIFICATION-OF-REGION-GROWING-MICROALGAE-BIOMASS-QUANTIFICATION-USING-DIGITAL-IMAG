clear all;close all;clc;
original=imread('E:\DIP\Pavendan\c.vulgaris.jpg');

original_bw=rgb2gray(original);

sp=imnoise(original_bw,'salt & pepper',0.05);
hmmf_sp=ordfilt2(sp,25,true(5));
gaussian=imnoise(original_bw,'gaussian',0.05);
hmmf_gaussian=ordfilt2(gaussian,25,true(5));
poisson=imnoise(original_bw,'poisson');
hmmf_poisson=ordfilt2(poisson,25,true(5));
speckle=imnoise(original_bw,'speckle',0.05);
hmmf_speckle=ordfilt2(speckle,25,true(5));

figure, subplot(321);imshow(original);title('Original RGB Image');
subplot(322);imshow(original_bw);title('Original Gray-scale Image');
subplot(323);imshow(hmmf_sp);title('Hybrid Filtered Salt and Pepper Noise Image');
subplot(324);imshow(hmmf_gaussian);title('Hybrid Filtered Gaussian Noise Image');
subplot(325);imshow(hmmf_poisson);title('Hybrid Filtered Poisson Noise Image');
subplot(326);imshow(hmmf_speckle);title('Hybrid Filtered Speckle Noise Image');

psnr1=immse(hmmf_sp,original_bw);
psnr2=immse(hmmf_gaussian,original_bw);
psnr3=immse(hmmf_poisson,original_bw);
psnr4=immse(hmmf_speckle,original_bw);