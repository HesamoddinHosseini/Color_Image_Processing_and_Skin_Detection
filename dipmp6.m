close all;
clear;

N = 128;
image=imread('D:/Im1910.png');
image = im2double(image);
[img_row_size, img_col_size] = size(image(:,:,1));

I = image(:,:,1) + image(:,:,2) + image(:,:,3);
R = image(:,:,1)./I;
G = image(:,:,2)./I;
B = image(:,:,3)./I;

nr = zeros(img_row_size, img_col_size);
ng = zeros(img_row_size, img_col_size);

for row = 1:img_row_size
    for col = 1:img_col_size

        nr(row, col) = round(R(row, col) * N);
        ng(row, col) = round(G(row, col) * N);
    end
end

H = zeros(N, N);

for row = 1:img_row_size
    for col = 1:img_col_size
        
        r = nr(row, col);
        c = ng(row, col);
        
        H(r, c) = H(r, c) + 1;
    end
end

Img1911 = imread('D:/Im1914.jpg');
Img1911 = im2double(Img1911);

[img_row_size, img_col_size] = size(Img1911(:,:,1));
I = Img1911(:,:,1) + Img1911(:,:,2) + Img1911(:,:,3);
R = Img1911(:,:,1)./I;
G = Img1911(:,:,2)./I;
B = Img1911(:,:,3)./I;

nr = zeros(img_row_size, img_col_size);
ng = zeros(img_row_size, img_col_size);

for row = 1:img_row_size
    for col = 1:img_col_size

        nr(row, col) = round(R(row, col) * N);
        ng(row, col) = round(G(row, col) * N);
    end
end

Likelihood_1911 = zeros(img_row_size, img_col_size);

for row = 1:img_row_size
    for col = 1:img_col_size
        
        r = uint8(nr(row, col));
        c = uint8(ng(row, col));
        
        if r == 0
            r = 1;
        end
        if c == 0
            c = 1;
        end
        
        Likelihood_1911(row, col) = H(r, c);
    end
end
figure;
subplot(1,2,1);
imshow(Img1911,[])
title('source');
subplot(1,2,2);
imshow(Likelihood_1911,[])
title('result');

