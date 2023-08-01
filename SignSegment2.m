I_= imread("sign.jpg");
%imshow(I_)
I=rgb2gray(I_);
imshow(I)
BI=imbinarize(I);
%BI1=BI;
imshow(BI);
display(BI(1,1))
[r,c,z]=size(BI);
%row=1;
%col=1;
%start_row=0;
flag=0;

for row=1:r
    flag1=0;
    count=0;
    
    for col=1:c
      count=count+1;

     if BI(row,col)==0 && flag==0
      start_row=row;
      start_col=col;
      flag=1;
     end
     if BI(row,col==0)
        flag1=1;
     end
     if flag1==0 && flag==1 && col==474
         
         end_row=row;
         end_col=col;
         flag=0;
         %img=imcrop(BI,[start_col start_row end_col end_row]);
         %file_name = sprintf('Image%d.png', row);
         %imwrite(img,file_name,'png')
         %pause(1);
         %imshow(img)

     end    
     
    
    end
end
imshow(BI)