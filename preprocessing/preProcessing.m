function [ hasilPreProcessing ] = preProcessing( gambar )
%PREPROCESSING Summary of this function goes here
%   Detailed explanation goes here
    %grayscaling
    gambarGray = rgb2gray(gambar);
    %resize
    gambarResize = imresize(gambarGray,[64 96]);
    [heightresize, widthresize, depthresize] = size(gambarResize);
    % crop
%     heightcrop = heightresize*0.2;
%     gambarCrop = imcrop(gambarResize,[1 1 widthresize heightcrop]);
    
    hasilPreProcessing = gambarResize;
end

