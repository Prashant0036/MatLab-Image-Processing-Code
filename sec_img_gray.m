I1=rgb2gray( imread("1.JPG"));
%imshow(I1)
I2_=rgb2gray(imread("bks1.png"));
[r,c,z]=size(I1);
I2=imresize(I2_,[r,c]);

%imshow(I2)
I3_=rgb2gray(imread("C.jpg"));
I3=imresize(I3_,[r,c]);
%imshow(I3)
I4_=rgb2gray(imread("D.jpg"));
I4=imresize(I4_,[r,c]);
%imshow(I4)
 
%Random 1 image
R1=bitxor(bitxor(bitxor(I1,I2),I3),I4);
%imshow(R1)

row=1;
col=1;
%R2_ = zeros([size(I1) 3]);
%R2 = uint8(R2_);
for i=1:(r*c)
    
   R1(row,col)=bitshift(R1(row,col),mod((row+col),8));
  
    row=row+1;
    if row>r 
        col=col+1;
        row=1;

    end
end
%imshow(R1);
N1=bitxor(I1,R1);
N2=bitxor(I2,R1);
N3=bitxor(I3,R1);

N4=bitxor(I4,R1);

%Sharing image
S1=N1;
S2=N2;
S3=bitxor(bitxor(N3,N2),N1);
S4=bitxor(bitxor(N4,N3),N2);
imwrite(S1,"S1.jpg","bmp");
imwrite(S2,"S2.jpg","bmp");
imwrite(S3,"S3.jpg","bmp");
imwrite(S4,"S4.jpg","bmp");
imshow(S1)

%----Decryption----
%Calculate Noise images
N1=S1;
N2=S2;
N3=bitxor(bitxor(S3,N2),N1);
N4=bitxor(bitxor(S4,N3),N2);


%Calculate first random image
R1=bitxor(bitxor(bitxor(N1,N2),N3),N4);

% Calculate Second Random Image
row=1;
col=1;
for i=1:(r*c)
    
   R1(row,col)=bitshift(R1(row,col),(mod((row+col),8)));
  
    row=row+1;
    if row>r 
        col=col+1;
        row=1;

    end
end

%Calculate secrets using below formula
I1=bitxor(N1,R1);
I2=bitxor(N2,R1);
I3=bitxor(N3,R1);
I4=bitxor(N4,R1);
imshow(I1)