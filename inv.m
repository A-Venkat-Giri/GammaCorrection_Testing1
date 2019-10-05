A=imread('orange.jpg');
figure,imshow(A);
AInv=imcomplement(A);
figure,imshow(AInv);
BInv=imreducehaze(AInv);
figure,imshow(BInv);
B=imcomplement(BInv);
figure, montage({A,B});
