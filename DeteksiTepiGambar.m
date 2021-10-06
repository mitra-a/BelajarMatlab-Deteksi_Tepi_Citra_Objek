gambar = imread('image.png');
figure(1);
imshow(gambar);
title('Gambar Berwarna');

a = rgb2gray(gambar);
figure(2); 
imshow(a);  
title('Gambar Keabuan');

%robert
x = edge(a,'roberts');
figure(5);
imshow(x);
title('Gambar Metode Roberts');

%sobel
y = edge(a,'sobel');
figure(3);
imshow(y);
title('Gambar Metode Sobel');

%prewitt
q = edge(a,'prewitt');
figure(4);
imshow(q);
title('Gambar Metode Prewitt');

%canny
b = edge(a,'canny');
figure(6);
imshow(b);
title('Gambar Metode Canny');

%laplacian
m = edge(a,'log');
figure(7);
imshow(m);
title('Gambar Metode Laplacian');

%compas
utara = [1 1 1; 1 -2 1; -1 -1 -1];
selatan = [-1 -1 -1; 1 -2 1; 1 1 1];
timur = [-1 1 1; -1 -2 1; -1 1 1];
barat = [1 1 -1; 1 -2 -1; 1 1 -1];

figure(8);
imshow(conv2(a,utara,'same'));
title('Gambar Compas Utara');

figure(9);
imshow(conv2(a,selatan,'same'));
title('Gambar Compas Selatan');

figure(10);
imshow(conv2(a,timur,'same'));
title('Gambar Compas Timur');

figure(11);
imshow(conv2(a,barat,'same'));
title('Gambar Compas Barat');

%isotropic
horizontal = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
vertical = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

figure(12);
imshow(conv2(a,horizontal,'same'));
title('Gambar Isotropic Horizontal');

figure(13);
imshow(conv2(a,vertical,'same'));
title('Gambar Isotropic Vertical');
