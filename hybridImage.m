function [img] = hybridImage(im1, im2, cutoff_low, cutoff_high)

im11 = imgaussfilt(im1, cutoff_low);
im22 = imgaussfilt(im2, cutoff_high);
im22 = im2 - im22;

% 去除高频的多余部分
% [h22, w22, b22] = size(im22);
% 
% figure(22), hold off, imagesc(im22), axis image, colormap default
% [xx, yy] = ginput(2);
% im222 = im22(floor(min(yy)):floor(max(yy)), floor(min(xx)):floor(max(xx)), :);
% 
% new22 = padarray(im222, [floor(min(yy)) floor(min(xx))], 'pre');
% im22 = padarray(new22, [h22-floor(max(yy)+1) w22-floor(max(xx)+1)], 'post');
% [h22, w22, b22] = size(new22);
% close(figure(22));
img = im11 + im22;

% 
% figure(1);
% imagesc(im1);
% figure(2);
% imagesc(im2);
% figure(11);
% imagesc(log(abs(fftshift(fft2(rgb2gray(im1))))));
% figure(12);
% imagesc(log(abs(fftshift(fft2(rgb2gray(im2))))));
 

% 
% figure(11);
% imagesc(log(abs(fftshift(fft2(rgb2gray(im11))))));
% figure(12);
% imagesc(log(abs(fftshift(fft2(rgb2gray(im22))))));
% figure(13);
% imagesc(log(abs(fftshift(fft2(rgb2gray(img))))));
