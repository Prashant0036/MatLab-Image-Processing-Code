img=imread("bks1.png");
imshow(img);
R1=img(:,:,1);
G1=img(:,:,2);
B1=img(:,:,3);
%imshow(R1)
%imshow(G1)
%imshow(B1)
%display(R1)
mess=input("Enter your secret message:",'s');
%display(mess);
mess_len=length(mess);
% display(mess_len);
mess_len_b=de2bi(mess_len);
%display(mess_len_b);
len_of_b=length(mess_len_b);
for i=len_of_b+1:8
     mess_len_b(i)=0;
    
end    
 display(mess_len_b);
 %display(mess_len_b(1));
 %display(R1(1,1));
 %R1(1,1)=254;
 %display(R1);
 R_1_1_b=de2bi(R1(1,1));
 G_1_1_b=de2bi(G1(1,1));
 B_1_1_b=de2bi(B1(1,1));
 display(R_1_1_b);
 R_1_1_b(1)=mess_len_b(1);
 R_1_1_b(2)=mess_len_b(2);
 R_1_1_b(3)=mess_len_b(3);
 G_1_1_b(1)=mess_len_b(4);
 G_1_1_b(2)=mess_len_b(5);
 G_1_1_b(3)=mess_len_b(6);
 G_1_1_b(1)=mess_len_b(7);
 G_1_1_b(2)=mess_len_b(8);
 R1(1,1)=bi2de(R_1_1_b);
 G1(1,1)=bi2de(G_1_1_b);
 B1(1,1)=bi2de(B_1_1_b);