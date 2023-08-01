I_= imread("sign.jpg");
%imshow(I_)
I=rgb2gray(I_);
imshow(I)
BI=imbinarize(I);
BI1=BI;
imshow(BI);
display(BI(1,1))
[r,c,z]=size(BI);
%row=1;
%col=1;
for row=1:r
    count=0;

    for col=1:c
      count=count+1;
     if BI(row,col)==0
      break;
     end
     
     if count==c
     BI(row,col)=0;
     end
    end
end
imshow(BI)








for i=1:r

    if BI(i,c)==1
        row_start =i;
        break;
    

    end

end
BI_crop1=imcrop(BI,[1 row_start c 278]);
[r,c]=size(BI_crop1);

for i=1:r

    if BI_crop1(i,c)==0
        row_end =i;
        break;
    

    end

end

BI_crop2=imcrop(BI_crop1,[1 1 c row_end]);



imwrite(BI_crop2,"cropimg1.jpg","bmp")
