function testtwofilter()
    srcFiles = dir('colorpics\*.JPG');  % the folder in which ur images exists
    
    %plotting
    figure('units','normalized','outerposition',[0 0 1 1]);
    set(gcf,'Visible','Off');
     
    for i = 1:length(srcFiles)
        filename1 = strcat('colorpics\', srcFiles(i).name);
        im1 = imread(filename1);
         
        im = twofilter(im1);
        subplot(3, 4, i), imshow(im);
%  imshow(im);
    end
    saveas(gcf, 'result.png');
    disp('Done!');
end


function image = twofilter(im)
    %get the image
    im = im2double(rgb2gray(im));
    im = imcomplement(im);

    %define M and S
    M1 = 1/33;
    S1 = -1/66;

    %cmfrat filters 0, 20, 40, 60, 80, 100, 120, 140, 160
    f0 = cmfrat(11, 11, 0, M1, S1);
    f20 = cmfrat(11, 11, 20, M1, S1);
    f40 = cmfrat(11, 11, 40, M1, S1);
    f60 = cmfrat(11, 11, 60, M1, S1);
    f80 = cmfrat(11, 11, 80, M1, S1);
    f100 = cmfrat(11, 11, 100, M1, S1);
    f120 = cmfrat(11, 11, 120, M1, S1);
    f140 = cmfrat(11, 11, 140, M1, S1);
    f160 = cmfrat(11, 11, 160, M1, S1);

    im0 = imfilter(im, f0, 'symmetric');
    im20 = imfilter(im, f20, 'symmetric');
    im40 = imfilter(im, f40, 'symmetric');
    im60 = imfilter(im, f60, 'symmetric');
    im80 = imfilter(im, f80, 'symmetric');
    im100 = imfilter(im, f100, 'symmetric');
    im120 = imfilter(im, f120, 'symmetric');
    im140 = imfilter(im, f140, 'symmetric');
    im160 = imfilter(im, f160, 'symmetric');

    %combined the images
    [row, col] = size(im0);
    image = zeros(row, col);
    for t=1:row
       for k=1:col
            image(t, k) = max([im0(t, k), im20(t, k), im40(t, k), im60(t, k), im80(t, k), im100(t, k), im120(t, k), im140(t, k), im160(t, k)]);  
       end
    end
    image = imadjust(image);

    % again
    M1 = -4/14;
    S1 = 3/14;

    %cmfrat filters 0, 20, 40, 60, 80, 100, 120, 140, 160
    f0 = cmfrat(11, 11, 0, M1, S1);
    f20 = cmfrat(11, 11, 20, M1, S1);
    f40 = cmfrat(11, 11, 40, M1, S1);
    f60 = cmfrat(11, 11, 60, M1, S1);
    f80 = cmfrat(11, 11, 80, M1, S1);
    f100 = cmfrat(11, 11, 100, M1, S1);
    f120 = cmfrat(11, 11, 120, M1, S1);
    f140 = cmfrat(11, 11, 140, M1, S1);
    f160 = cmfrat(11, 11, 160, M1, S1);

    im = imcomplement(image);
    im0 = imfilter(im, f0, 'symmetric');
    im20 = imfilter(im, f20, 'symmetric');
    im40 = imfilter(im, f40, 'symmetric');
    im60 = imfilter(im, f60, 'symmetric');
    im80 = imfilter(im, f80, 'symmetric');
    im100 = imfilter(im, f100, 'symmetric');
    im120 = imfilter(im, f120, 'symmetric');
    im140 = imfilter(im, f140, 'symmetric');
    im160 = imfilter(im, f160, 'symmetric');

    %combined the images
    [row, col] = size(im0);
    image = zeros(row, col);
    for t=1:row
       for k=1:col
            image(t, k) = max([im0(t, k), im20(t, k), im40(t, k), im60(t, k), im80(t, k), im100(t, k), im120(t, k), im140(t, k), im160(t, k)]);  
       end
    end


    image = imadjust(image);
end

% %         figure('units','normalized','outerposition',[0 0 1 1]);
% % %         set(gcf,'Visible','Off');
% %         subplot(3, 4, 1), imshow(image), title('combined'); hold on;
% %         subplot(3, 4, 2), imshow(im0), title('0 deg');
% %         subplot(3, 4, 3), imshow(im20), title('20 deg');
% %         subplot(3, 4, 4), imshow(im40), title('40 deg');
% %         subplot(3, 4, 5), imshow(im60), title('60 deg');
% %         subplot(3, 4, 6), imshow(im80), title('80 deg');
% %         subplot(3, 4, 7), imshow(im100), title('100 deg');
% %         subplot(3, 4, 8), imshow(im120), title('120 deg');
% %         subplot(3, 4, 9), imshow(im140), title('140 deg');
% %         subplot(3, 4, 10), imshow(im160), title('160 deg');
% %         hold off;
