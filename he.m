clc;
close all;
clear all;
I = imread('zxc.JPG');
figure
subplot(1,2,1);
imshow(I);
subplot(1,2,2);
imhist(I , 64);
J = histeq(I);
figure
subplot(1,2,1);
imshow(J);
subplot(1,2,2);
imhist(J,64);
[J,T] = histeq(I);
figure
plot((0:225)/225,T);