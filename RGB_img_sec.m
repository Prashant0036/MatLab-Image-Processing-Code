I1= imread("7.jpg");
[r,c,z]=size(I1);
I2_=(imread("9.jpg"));
I2=imresize(I2_,[r,c]);
I3_=imread("10.jpg");
I3=imresize(I3_,[r,c]);
I4_=imread("14.jpg");
I4=imresize(I4_,[r,c]);

R_I1=I1(:,:,1);
R_I2=I2(:,:,1);
R_I3=I3(:,:,1);
R_I4=I4(:,:,1);

G_I1=I1(:,:,2);
G_I2=I2(:,:,2);
G_I3=I3(:,:,2);
G_I4=I4(:,:,2);

B_I1=I1(:,:,3);
B_I2=I2(:,:,3);
B_I3=I3(:,:,3);
B_I4=I4(:,:,3);

% For R
R1_R= bitxor(bitxor(bitxor(R_I1,R_I2),R_I3),R_I4);
R2_R=R1_R;
row=1;
col=1;

for i=1:(r*c)

    R2_R(row,col)=bitshift(R1_R(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
N1_R=bitxor(R_I1,R2_R);
N2_R=bitxor(R_I2,R2_R);
N3_R=bitxor(R_I3,R2_R);
N4_R=bitxor(R_I4,R2_R);

S1_R=N1_R;
S2_R=N2_R;
S3_R=bitxor(bitxor(N3_R,N2_R),N1_R);
S4_R=bitxor(bitxor(N4_R,N3_R),N2_R);


% For G
R1_G= bitxor(bitxor(bitxor(G_I1,G_I2),G_I3),G_I4);
R2_G=R1_G;
row=1;
col=1;

for i=1:(r*c)

    R2_G(row,col)=bitshift(R1_G(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
N1_G=bitxor(G_I1,R2_G);
N2_G=bitxor(G_I2,R2_G);
N3_G=bitxor(G_I3,R2_G);
N4_G=bitxor(G_I4,R2_G);

S1_G=N1_G;
S2_G=N2_G;
S3_G=bitxor(bitxor(N3_G,N2_G),N1_G);
S4_G=bitxor(bitxor(N4_G,N3_G),N2_G);

% For B
R1_B= bitxor(bitxor(bitxor(B_I1,B_I2),B_I3),B_I4);
R2_B=R1_B;
row=1;
col=1;

for i=1:(r*c)

    R2_B(row,col)=bitshift(R1_B(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
N1_B=bitxor(B_I1,R2_B);
N2_B=bitxor(B_I2,R2_B);
N3_B=bitxor(B_I3,R2_B);
N4_B=bitxor(B_I4,R2_B);

S1_B=N1_B;
S2_B=N2_B;
S3_B=bitxor(bitxor(N3_B,N2_B),N1_B);
S4_B=bitxor(bitxor(N4_B,N3_B),N2_B);


%subplot(6,6,1),imshow(S1_R)
%subplot(6,6,2),imshow(S2_R)
%subplot(6,6,3),imshow(S3_R)
%subplot(6,6,4),imshow(S4_R)
%subplot(6,6,5),imshow(S1_G)
%subplot(6,6,6),imshow(S2_G)
%subplot(6,6,7),imshow(S3_G)
%subplot(6,6,8),imshow(S4_G)
%subplot(6,6,9),imshow(S1_B)
%subplot(6,6,10),imshow(S2_B)
%subplot(6,6,11),imshow(S3_B)
%subplot(6,6,12),imshow(S4_B)


%-----Decryption-------

% For R
N1_R=S1_R;
N2_R=S2_R;
N3_R=bitxor(bitxor(S3_R,N2_R),N1_R);
N4_R=bitxor(bitxor(S4_R,N3_R),N2_R);

R1_R=bitxor(bitxor(bitxor(N1_R,N2_R),N3_R),N4_R);
R2_R=R1_R;
row=1;
col=1;
for i=1:(r*c)

    R2_R(row,col)=bitshift(R1_R(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
R_I1=bitxor(N1_R,R2_R);
R_I2=bitxor(N2_R,R2_R);
R_I3=bitxor(N3_R,R2_R);
R_I4=bitxor(N4_R,R2_R);


% For G
N1_G=S1_G;
N2_G=S2_G;
N3_G=bitxor(bitxor(S3_G,N2_G),N1_G);
N4_G=bitxor(bitxor(S4_G,N3_G),N2_G);

R1_G=bitxor(bitxor(bitxor(N1_G,N2_G),N3_G),N4_G);
R2_G=R1_G;
row=1;
col=1;
for i=1:(r*c)

    R2_G(row,col)=bitshift(R1_G(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
G_I1=bitxor(N1_G,R2_G);
G_I2=bitxor(N2_G,R2_G);
G_I3=bitxor(N3_G,R2_G);
G_I4=bitxor(N4_G,R2_G);

% For B
N1_B=S1_B;
N2_B=S2_B;
N3_B=bitxor(bitxor(S3_B,N2_B),N1_B);
N4_B=bitxor(bitxor(S4_B,N3_B),N2_B);

R1_B=bitxor(bitxor(bitxor(N1_B,N2_B),N3_B),N4_B);
R2_B=R1_B;
row=1;
col=1;
for i=1:(r*c)

    R2_B(row,col)=bitshift(R1_B(row,col),mod((row+col),8));
    row=row+1;
    if row>r
       col=col+1;
       row=1;
    end
end
B_I1=bitxor(N1_B,R2_B);
B_I2=bitxor(N2_B,R2_B);
B_I3=bitxor(N3_B,R2_B);
B_I4=bitxor(N4_B,R2_B);

% First Image
I1(:,:,1)=R_I1;
I1(:,:,2)=G_I1;
I1(:,:,3)=B_I1;
%imshow(I1)

% Second Image
I2(:,:,1)=R_I2;
I2(:,:,2)=G_I2;
I2(:,:,3)=B_I2;
%figure,imshow(I2)

% Third Image
I3(:,:,1)=R_I3;
I3(:,:,2)=G_I3;
I3(:,:,3)=B_I3;
%figure,imshow(I3)

% Fourth Image
I4(:,:,1)=R_I4;
I4(:,:,2)=G_I4;
I4(:,:,3)=B_I4;
%figure,imshow(I4)
 subplot(2,2,1),imshow(I1)
 subplot(2,2,2),imshow(I2)
 subplot(2,2,3),imshow(I3)
 subplot(2,2,4),imshow(I4)