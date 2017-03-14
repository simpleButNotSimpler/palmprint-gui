%get the image
[path, name] = uigetfile('*');
im = imread(strcat(name, path));
im = im2double(rgb2gray(im));

%structuring elements
b0 = [1 1 1 1 1];
b90 = [1 1 1 1 1]';
b135 = diag(b0);
b45 = rot90(b135);

%smoothing
% im0 = imfilter(im, b90, 'symmetric');
% im45 = imfilter(im, b135, 'symmetric');
% im90 = imfilter(im, b0, 'symmetric');
% im135 = imfilter(im, b45, 'symmetric');
im0 = conv2(im, b90);
im45 = conv2(im, b135);
im90 = conv2(im, b0);
im135 = conv2(im, b45);


%plot
subplot(3, 3, 1), imshow(imadjust(im0));
subplot(3, 3, 2), imshow(imadjust(im45));
subplot(3, 3, 3), imshow(imadjust(im90));
subplot(3, 3, 4), imshow(imadjust(im135));

%bottom-hot
im0 = imbothat(im0, b0);
im45 = imbothat(im45, b45);
im90 = imbothat(im90, b90);
im135 = imbothat(im135, b135);

%plot
subplot(3, 3, 5), imshow(im0), title('bottom-hat');
subplot(3, 3, 6), imshow(im45);
subplot(3, 3, 7), imshow(im90);
subplot(3, 3, 8), imshow(im135);

%gradient
[mag0, ~] = imgradient(im0);
[mag45, ~] = imgradient(im45);
[mag90, ~] = imgradient(im90);
[mag135, ~] = imgradient(im135);