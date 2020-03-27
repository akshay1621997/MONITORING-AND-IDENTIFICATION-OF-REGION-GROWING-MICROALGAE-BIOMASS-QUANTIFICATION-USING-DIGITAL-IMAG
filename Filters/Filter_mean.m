clear all;
original=imread('E:\DIP\Pavendan\c.vulgaris.jpg');

original_bw=rgb2gray(original);
h=ones(5,5)/25;

sp=imnoise(original_bw,'salt & pepper',0.05);
mean_sp=imfilter(sp,h);
gaussian=imnoise(original_bw,'gaussian',0.05);
mean_gaussian=imfilter(gaussian,h);
poisson=imnoise(original_bw,'poisson');
mean_poisson=imfilter(poisson,h);
speckle=imnoise(original_bw,'speckle',0.05);
mean_speckle=imfilter(speckle,h);

figure, subplot(321);imshow(original);title('Original RGB Image');
subplot(322);imshow(original_bw);title('Original Gray-scale Image');
subplot(323);imshow(mean_sp);title('Mean Filtered Salt and Pepper Noise Image');
subplot(324);imshow(mean_gaussian);title('Mean Filtered Gaussian Noise Image');
subplot(325);imshow(mean_poisson);title('Mean Filtered Poisson Noise Image');
subplot(326);imshow(mean_speckle);title('Mean Filtered Speckle Noise Image');

