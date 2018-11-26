image = imread('MVI_2871.00_00_08_33.Still006.jpg');
image_gray = rgb2gray(image);
imwrite(image_gray,'MVI_2871.00_00_08_33.Still006_gray.jpg');