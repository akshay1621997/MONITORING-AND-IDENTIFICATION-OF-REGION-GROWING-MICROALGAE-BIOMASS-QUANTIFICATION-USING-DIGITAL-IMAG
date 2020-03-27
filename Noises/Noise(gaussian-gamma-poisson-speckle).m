clear all;
original=imread('E:\DIP\Pavendan\c.vulgaris.jpg');

original_bw=rgb2gray(original);

sp=imnoise(original_bw,'salt & pepper',0.05);

gaussian=imnoise(original_bw,'gaussian',0.05);

poisson=imnoise(original_bw,'poisson');

speckle=imnoise(original_bw,'speckle',0.05);

figure, subplot(321);imshow(original);title('Original RGB Image');
subplot(322);imshow(original_bw);title('Original Gray-scale Image');
subplot(323);imshow(sp);title('Salt and Pepper Noise Image');
subplot(324);imshow(gaussian);title('Gaussian Noise Image');
subplot(325);imshow(poisson);title('Poisson Noise Image');
subplot(326);imshow(speckle);title('Speckle Noise Image');