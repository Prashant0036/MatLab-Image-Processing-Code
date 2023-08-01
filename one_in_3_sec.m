I1= imread("7.jpg");
[r,c,z]=size(I1);
%display(I1);
I2_=(imread("9.jpg"));
I2=imresize(I2_,[r,c]);
I3_=imread("10.jpg");
I3=imresize(I3_,[r,c]);
I4_=imread("14.jpg");
I4=imresize(I4_,[r,c]);

R_I1=I1(:,:,1);
G_I1=I1(:,:,2);
B_I1=I1(:,:,3);

R_I2=I2(:,:,1);
G_I2=I2(:,:,2);
B_I2=I2(:,:,3);

R_I3=I3(:,:,1);
G_I3=I3(:,:,2);
B_I3=I3(:,:,3);

R_I4=I4(:,:,1);
G_I4=I4(:,:,2);
B_I4=I4(:,:,3);

row=1;
col=1;
for i=1:r*c
   
  R_I4_de=R_I4(row,col);
  R_I4_bi=de2bi(R_I4_de);
  for j=length(R_I4_bi)+1:8
      
   R_I4_bi(j)=0;
  end
    
  R_I1_de=R_I1(row,col);
  R_I1_bi=de2bi(R_I1_de);
  for j=length(R_I1_bi)+1:8
      
     R_I1_bi(j)=0;
  end
  R_I2_de=R_I2(row,col);
  R_I2_bi=de2bi(R_I2_de);
  for j=length(R_I2_bi)+1:8
      
     R_I2_bi(j)=0;
  end
  
  R_I3_de=R_I3(row,col);
  R_I3_bi=de2bi(R_I3_de);
  for j=length(R_I3_bi)+1:8
      
     R_I3_bi(j)=0;
  end

      R_I1_bi(1)=R_I4_bi(1);
      R_I1_bi(2)=R_I4_bi(2);
      R_I1_bi(3)=R_I4_bi(3);
      R_I2_bi(1)=R_I4_bi(4);
      R_I2_bi(2)=R_I4_bi(5);
      R_I2_bi(3)=R_I4_bi(6);
      R_I3_bi(1)=R_I4_bi(7);
      R_I3_bi(2)=R_I4_bi(8);
  R_I1(row,col)=bi2de(R_I1_bi);
 
  R_I2(row,col)=bi2de(R_I2_bi);
  
  R_I3(row,col)=bi2de(R_I3_bi);
  
G_I4_de=G_I4(row,col);
  G_I4_bi=de2bi(G_I4_de);
  for j=length(G_I4_bi)+1:8
      
   G_I4_bi(j)=0;
  end
    
  G_I1_de=G_I1(row,col);
  G_I1_bi=de2bi(G_I1_de);
  for j=length(G_I1_bi)+1:8
      
     G_I1_bi(j)=0;
  end
  G_I2_de=G_I2(row,col);
  G_I2_bi=de2bi(G_I2_de);
  for j=length(G_I2_bi)+1:8
      
     G_I2_bi(j)=0;
  end
  
  G_I3_de=G_I3(row,col);
  G_I3_bi=de2bi(G_I3_de);
  for j=length(G_I3_bi)+1:8
      
     G_I3_bi(j)=0;
  end


  
      G_I1_bi(1)=G_I4_bi(1);
      G_I1_bi(2)=G_I4_bi(2);
      G_I1_bi(3)=G_I4_bi(3);
      G_I2_bi(1)=G_I4_bi(4);
      G_I2_bi(2)=G_I4_bi(5);
      G_I2_bi(3)=G_I4_bi(6);
      G_I3_bi(1)=G_I4_bi(7);
      G_I3_bi(2)=G_I4_bi(8);
  G_I1(row,col)=bi2de(G_I1_bi);
 
  G_I2(row,col)=bi2de(G_I2_bi);
  
  G_I3(row,col)=bi2de(G_I3_bi);

  B_I4_de=B_I4(row,col);
  B_I4_bi=de2bi(B_I4_de);
  for j=length(B_I4_bi)+1:8
      
   B_I4_bi(j)=0;
  end
    
  B_I1_de=B_I1(row,col);
  B_I1_bi=de2bi(B_I1_de);
  for j=length(B_I1_bi)+1:8
      
     B_I1_bi(j)=0;
  end
  B_I2_de=B_I2(row,col);
  B_I2_bi=de2bi(B_I2_de);
  for j=length(B_I2_bi)+1:8
      
     B_I2_bi(j)=0;
  end
  
  B_I3_de=B_I3(row,col);
  B_I3_bi=de2bi(B_I3_de);
  for j=length(B_I3_bi)+1:8
      
     B_I3_bi(j)=0;
  end


  
      B_I1_bi(1)=B_I4_bi(1);
      B_I1_bi(2)=B_I4_bi(2);
      B_I1_bi(3)=B_I4_bi(3);
      B_I2_bi(1)=B_I4_bi(4);
      B_I2_bi(2)=B_I4_bi(5);
      B_I2_bi(3)=B_I4_bi(6);
      B_I3_bi(1)=B_I4_bi(7);
      B_I3_bi(2)=B_I4_bi(8);
  B_I1(row,col)=bi2de(B_I1_bi);
 
  B_I2(row,col)=bi2de(B_I2_bi);
  
  B_I3(row,col)=bi2de(B_I3_bi);


  
  row=row+1;
  if(row>r)
  col=col+1;
  row=1;
  end


end

I1(:,:,1)=R_I1;
I1(:,:,2)=G_I1;
I1(:,:,3)=B_I1;

I2(:,:,1)=R_I2;
I2(:,:,2)=G_I2;
I2(:,:,3)=B_I2;

I3(:,:,1)=R_I3;
I3(:,:,2)=G_I3;
I3(:,:,3)=B_I3;

I4(:,:,1)=R_I4;
I4(:,:,2)=G_I4;
I4(:,:,3)=B_I4;

imwrite(I1,"img1.jpg",'bmp');
imwrite(I2,"img2.jpg",'bmp');
imwrite(I3,"img3.jpg",'bmp');
%subplot(2,2,1),imshow(I1)
%subplot(2,2,2),imshow(I2)
%subplot(2,2,3),imshow(I3)
%subplot(2,2,4),imshow(I4)

