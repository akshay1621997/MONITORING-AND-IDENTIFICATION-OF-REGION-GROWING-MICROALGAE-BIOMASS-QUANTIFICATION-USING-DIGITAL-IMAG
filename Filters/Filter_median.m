clear all;
original=imread('E:\DIP\Pavendan\c.vulgaris.jpg');

original_bw=rgb2gray(original);

sp=imnoise(original_bw,'salt & pepper',0.05);
median_sp=medfilt2(sp);
gaussian=imnoise(original_bw,'gaussian',0.05);
median_gaussian=medfilt2(gaussian);
poisson=imnoise(original_bw,'poisson');
median_poisson=medfilt2(poisson);
speckle=imnoise(original_bw,'speckle',0.05);
median_speckle=medfilt2(speckle);

figure, subplot(321);imshow(original);title('Original RGB Image');
subplot(322);imshow(original_bw);title('Original Gray-scale Image');
subplot(323);imshow(median_sp);title('Median Filtered Salt and Pepper Noise Image');
subplot(324);imshow(median_gaussian);title('Median Filtered Gaussian Noise Image');
subplot(325);imshow(median_poisson);title('Median Filtered Poisson Noise Image');
subplot(326);imshow(median_speckle);title('Median Filtered Speckle Noise Image');

psnr1=immse(median_sp,original_bw);
psnr2=immse(median_gaussian,original_bw);
psnr3=immse(median_poisson,original_bw);
psnr4=immse(median_speckle,original_bw);