%S1=imread("S1.png");
%S2=imread("S2.jpg");
%S3=imread("S3.jpg");
%S4=imread("S4.jpg");
%[r,c,z]=size(S1);
%display(r)

%Calculate Noise images
N1=S1;
N2=S2;
N3=bitxor(bitxor(S3,N2),N1);
N4=bitxor(bitxor(S4,N3),N2);

%Calculate size
[r,c,z]=size(N1);

%Calculate first random image
R1=bitxor(bitxor(bitxor(N1,N2),N3),N4);

%Calculate Second Random image
row=1;
col=1;
for i=1:(r*c)
   R1(row,col)=bitshift(R1(row,col),-(mod((row+col),8)));
  
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


