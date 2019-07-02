clear;

im_in = imread('hormigas.jpg');
imshow(im_in)
[m,n] = size(im_in);
im_out = ones(m,n/3);

T = 150;

for i = 1:m
    for j = 1:n / 3
        if(im_in(i,j) > T)
            im_out(i,j) = 0;
        else
            im_out(i,j) = 1;
        end
    end
end

figure
imshow(im_out)

