clc
clear all;
close all;
I = imread('6.JFIF');
I2 = rgb2gray(I);
%I1=im2double((imresize(I2,0.25)));
%I1 = f(x,y);
figure,imshow(I2);
figure,imhist(I2);
[m,n]=size(I2);
for i=2:m-1
    for j=2:n-1
        w = I2(i-1:i+1,j-1:j+1);
        m(i,j) = mean(mean(w));
        g(i,j) = 1*I(i,j);
        k(i,j) = I2(i,j)^g(i,j);
    end
end
figure, imshow(g);
figure, imshow(k);