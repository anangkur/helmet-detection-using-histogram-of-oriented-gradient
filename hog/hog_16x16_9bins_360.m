function [ feature, Ix, Iy ] = hog( im, nama_file )
%HOG Summary of this function goes here
%   Detailed explanation goes here

%     disp(im_name);

    im = double(im);
    rows=size(im,1);
    cols=size(im,2);

    % Gradients in X and Y direction. Ix is the gradient in X direction and Iy is the gradient in Y direction
    hx = [-1,0,1];  % the gradient kernel for x direction
    hy = -hx';      % the gradient kernel for y direction
    Ix = imfilter(im,hx);   % gradient image in x direction
    Iy = imfilter(im,hy);   % gradient image in y direction

%     saveImage = imshowpair(uint8(Ix),uint8(Iy),'montage');  

    angle=atand(Iy./Ix); % Matrix containing the angles of each edge gradient
    angle=imadd(angle,270); %Angles in range (0,180)
    magnitude=sqrt(Ix.^2 + Iy.^2);
    
    % Remove redundant pixels in an image. 
    angle(isnan(angle))=0;
    magnitude(isnan(magnitude))=0;
    
%     saveImage = imshowpair(uint8(angle),uint8(magnitude),'montage'); 

    feature=[]; %initialized the feature vector

    count_loop_block = 0;
    % Iterations for Blocks
    for i = 0: rows/16-2
        for j= 0: cols/16-2
            count_loop_block = count_loop_block + 1;
            mag_patch = magnitude(16*i+1 : 16*i+32 , 16*j+1 : 16*j+32);
            ang_patch = angle(16*i+1 : 16*i+32 , 16*j+1 : 16*j+32);

            block_feature=[];

            count_loop_cell = 0;
            %Iterations for cells in a block
            for x= 0:1
                for y= 0:1
                    count_loop_cell = count_loop_cell+1;
                    angleA =ang_patch(16*x+1:16*x+16, 16*y+1:16*y+16);
                    magA   =mag_patch(16*x+1:16*x+16, 16*y+1:16*y+16); 
                    histr  =zeros(1,9);
                    
                    count_loop_pixel = 0;
                    % Iterations for pixels in one cell
                    
                    for p=1:8
                        for q=1:8
                            count_loop_pixel = count_loop_pixel+1;
                            alpha = angleA(p,q);
                            mag = magA(p,q);
                            
                            % Binning Process
                            n = alpha.*(9/360);
                            if n == 0
                                n = 1;
                            end
                            histr(ceil(n)) = histr(ceil(n)) + mag;
                        end
                    end
%                     figure;
%                     bar(histr);
                    block_feature=[block_feature histr]; % Concatenation of Four histograms to form one block feature
                end
            end
            
%             % Normalize the values in the block using L1-Norm
            block_feature=block_feature/sqrt(norm(block_feature)^2+.01);
            feature=[feature block_feature]; %Features concatenation
        end
    end
%     disp('');
%     disp(['loop_block: ','baris: ',num2str(i+1),' kolom: ',num2str(j+1)]);
%     disp(['loop_cell: ' ,'baris: ',num2str(x),' kolom: ',num2str(y)]);
%     disp(['loop_pixel: ', 'baris: ',num2str(p), ' kolom: ',num2str(q)]);

    feature(isnan(feature))=0; %Removing Infinitiy values

%     Normalization of the feature vector using L2-Norm
    feature=feature/sqrt(norm(feature)^2+.001);
end