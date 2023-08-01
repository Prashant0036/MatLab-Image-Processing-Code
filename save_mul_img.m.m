ImageFolder ='C:\Users\person\Desktop\ Project\Matlab\Image Saving Test';
for i=1:5 % this loop will take 5 pictures and save them in the Matlab folder 
    img = snapshot(cam);
    file_name = sprintf('Image%d.png', i);% name Image with a sequence of number, ex Image1.png , Image2.png....
    fullFileName = fullfile(ImageFolder, file_name);
    imwrite(img,file_name,'png') %save the image as a Portable Graphics Format file(png)into the MatLab
    pause(1); % pause for one second
    imshow(img) % display the image for every second
end