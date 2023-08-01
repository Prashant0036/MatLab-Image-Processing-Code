I1 = rgb2gray( imread("1.JPG"));
%imshow(I1)
I2_ = rgb2gray(imread("bks1.png"));
[r,c,z]=size(I1);
I2=imresize(I2_,[r,c]);

%imshow(I2)
I3_ = rgb2gray(imread("C.jpg"));
I3 = imresize(I3_,[r,c]);
%imshow(I3)
I4_=rgb2gray(imread("D.jpg"));
I4=imresize(I4_,[r,c]);
%imshow(I4)
 
%Random 1 image
R1=bitxor(bitxor(bitxor(I1,I2),I3),I4);

imshow(R1);
N1=bitxor(I1,R1);
N2=bitxor(I2,R1);
N3=bitxor(I3,R1);
N4=bitxor(I4,R1);

%Sharing image
S1=N1;
S2=N2;
S3=bitxor(bitxor(N3,N2),N1);
S4=bitxor(bitxor(bitxor(N4,N3),N2),N1);
imshow(S2);