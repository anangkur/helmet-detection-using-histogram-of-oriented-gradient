function [  ] = extract_video(  )
%EXTRACT_VIDEO Summary of this function goes here
%   Detailed explanation goes here

    [ video_file_name,video_file_path ] = uigetfile({'*.mp4;*.mkv;*.mov'},'Pick a Video file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');
    
    if(video_file_path == 0)
        return;
    end

%     input_video_file = 'D:/Kuliah/TA/Program/Code/ta/data/MVI_1237-H264-30sec-1.mp4';
    input_video_file = [ video_file_path,video_file_name, ];
    videoObject = VideoReader(input_video_file);
    numFrames = 0;
    
    while hasFrame(videoObject)
        numFrames = numFrames+1;
        mov(numFrames).cdata = readFrame(videoObject);
        movGray(numFrames).cdata = rgb2gray(mov(numFrames).cdata);
    end

    disp('background substraction..');
    [height,width,depth] = size(movGray(1).cdata);
    
    background = zeros(height,width,depth);
    for i = 1:numFrames
        background = double(movGray(i).cdata) + background;
    end
    background = background/numFrames;
    
    [height,width,depth] = size(movGray(1).cdata);
    line_pos = double(width/2);
    
    for frameCount = 2:1:numFrames
    % Display frames

        frame = movGray(frameCount).cdata;
        frame2 = mov(frameCount).cdata;

        Diff1 = uint8(abs((double((movGray(frameCount).cdata))) - double(background)));
        
        Diff1 = im2bw(Diff1,0.1);
        Diff1 = bwareaopen(Diff1,150);    

        imshow(Diff1);
        
        line = Diff1(:,line_pos);
        sum1 = sum(line(:) == 1);
        if (sum1 > 90)
            ConnectedCommponent = bwconncomp(Diff1);
            regionProps=regionprops(ConnectedCommponent,'BoundingBox');
            if (numel(regionProps) > 1)
                BB0=regionProps(1).BoundingBox;
                for k=1:numel(regionProps)
                    BB=regionProps(k).BoundingBox;
                    if (BB0(3)*BB0(4)<BB(3)*BB(4))
                        BB0=BB;
                    end
                end  
            end
            img_temp = movGray(frameCount).cdata;
            img_temp = immultiply(img_temp,Diff1);
            imwrite((img_temp),['dataset/image_hasil_menghilangkan_background_',num2str(frameCount),'.jpg']);
            img_hasil = imcrop(img_temp,[BB0(1), BB0(2)-24, BB0(3), BB0(4)]);
            img_hasil2 = imcrop(frame2,[BB0(1), BB0(2)-24, BB0(3), BB0(4)]);
            imwrite((img_hasil2),['dataset/image_hasil_crop_benda_bergerak_',num2str(frameCount),'.jpg']);
            [height,width,depth] = size(img_hasil);
            if (width > 150 && width < 500)
                img_hasil_head = imcrop(img_hasil,[1 1 width height*25/100]);
                img_hasil_head2 = imcrop(img_hasil2,[1 1 width height*25/100]);
                img_hasil_head_bw = im2bw(img_hasil_head);
                ConnectedCommponent = bwconncomp(img_hasil_head_bw);
                regionProps=regionprops(ConnectedCommponent,'BoundingBox');
                if (numel(regionProps) > 1)
                    BB0=regionProps(1).BoundingBox;
                    for k=1:numel(regionProps)
                        BB=regionProps(k).BoundingBox;
                        if BB0(3)*BB0(4)<BB(3)*BB(4)
                            BB0=BB;
                        end
                    end  
                end
                img_hasil_head_crop = imcrop(img_hasil_head,[BB0(1), BB0(2), BB0(3), BB0(4)]);
                img_hasil_head_crop2 = imcrop(img_hasil_head2,[BB0(1), BB0(2), BB0(3), BB0(4)]);
                [height,width,depth] = size(img_hasil_head_crop);
%                 if height>1 && width>1
%                     imwrite((img_hasil_head_crop),['dataset/image_',num2str(frameCount),'.jpg']);
%                 end
            end
        end
    end
    
%     for i=1:310
%         image = imread(['D:/Kuliah/TA/Program/Code/ta/sandbox/dataset/',num2str(i),'.jpg']);
%         imageResize = imresize(image,[64 96]);
%         imwrite(imageResize, ['D:/Kuliah/TA/Program/Code/ta/sandbox/dataset/dataset_hasil_program',num2str(310+i),'.jpg']);
%     end
end

