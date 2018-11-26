function [  ] = input_data_training(  )

%     disp('Input Data..');
%     folderName = 'D:/Kuliah/TA/Program/Dataset/Dataset Take Sendiri/Frames MVI_2871/hasil_crop_motor/hasil_crop_head/';
%     namaFile = 'MVI_2871_crop_head_';
%     
%     class = xlsread([folderName,'class.xlsx']);
%     classAll = class(:,1);
%     
%     disp('Pre Processing..');
%     for i = 1 : 300
%         gambar = imread([folderName,namaFile,num2str(i),'.jpg']);
%         hasilPreProcessing(:,:,i) = preProcessing(gambar);
% %         disp([folderName,namaFile,num2str(i),'.jpg']);
%         classData(i,1) = classAll(i);
%     end
%     
%     disp('Ekstraksi Ciri HOG..');
%     for i = 1 : 300
%         [hogFeature_16x16_18bins_180(i,:)] = hog_16x16_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_18bins_360(i,:)] = hog_16x16_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_9bins_180(i,:)] = hog_16x16_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_9bins_360(i,:)] = hog_16x16_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_18bins_180(i,:)] = hog_8x8_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_18bins_360(i,:)] = hog_8x8_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_9bins_180(i,:)] = hog_8x8_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_9bins_360(i,:)] = hog_8x8_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%     end

%     folderName = 'D:/Kuliah/TA/Program/Dataset/Dataset Take Sendiri/Frames MVI_1219/hasil_crop_1/dataset_cropped_head/';
%     namaFile = 'dataset_hasil_crop_head_';
% 
%     class = xlsread([folderName,'class.xlsx']);
%     classAll = class(:,1);
% 
%     disp('Pre Processing..');
%     for i = 1 : 300
%         gambar = imread([folderName,namaFile,num2str(i),'.jpg']);
% %         disp([folderName,namaFile,num2str(i),'.jpg']);
%         hasilPreProcessing(:,:,i) = preProcessing(gambar);
%         classData(i,1) = classAll(i);
%     end
% 
%     disp('Ekstraksi Ciri HOG..');
%     for i = 1 : 300
%         [hogFeature_16x16_18bins_180(i,:)] = hog_16x16_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_18bins_360(i,:)] = hog_16x16_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_9bins_180(i,:)] = hog_16x16_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_16x16_9bins_360(i,:)] = hog_16x16_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_18bins_180(i,:)] = hog_8x8_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_18bins_360(i,:)] = hog_8x8_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_9bins_180(i,:)] = hog_8x8_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%         [hogFeature_8x8_9bins_360(i,:)] = hog_8x8_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
%     end

    folderName = 'D:/Kuliah/TA/Program/Code/ta/sandbox/dataset/selected/';
    namaFile = 'dataset_hasil_program';

    class = xlsread([folderName,'class.xlsx']);
    classAll = class(:,1);

    disp('Pre Processing..');
    for i = 1 : 200
        gambar = imread([folderName,namaFile,num2str(i),'.jpg']);
%         disp([folderName,namaFile,num2str(i),'.jpg']);
        hasilPreProcessing(:,:,i) = gambar;
        classData(i,1) = classAll(i);
    end

    disp('Ekstraksi Ciri HOG..');
    for i = 1 : 200
        [hogFeature_16x16_18bins_180(i,:)] = hog_16x16_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_16x16_18bins_360(i,:)] = hog_16x16_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_16x16_9bins_180(i,:)] = hog_16x16_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_16x16_9bins_360(i,:)] = hog_16x16_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_8x8_18bins_180(i,:)] = hog_8x8_18bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_8x8_18bins_360(i,:)] = hog_8x8_18bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_8x8_9bins_180(i,:)] = hog_8x8_9bins_180(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
        [hogFeature_8x8_9bins_360(i,:)] = hog_8x8_9bins_360(hasilPreProcessing(:,:,i),[namaFile num2str(i) '.jpg']);
    end

    %-------------------------------------------------------------------

    dataTraining16x16_18bins_180 = (zeros(size(hogFeature_16x16_18bins_180,1),size(hogFeature_16x16_18bins_180,2)+1));
    dataTraining16x16_18bins_180(:,1:size(hogFeature_16x16_18bins_180,2)) = hogFeature_16x16_18bins_180;
    dataTraining16x16_18bins_180(:,size(hogFeature_16x16_18bins_180,2)+1) = classData;
    save('data_training/dataTraining16x16_18bins_180','dataTraining16x16_18bins_180');

    dataTraining16x16_18bins_360 = (zeros(size(hogFeature_16x16_18bins_360,1),size(hogFeature_16x16_18bins_360,2)+1));
    dataTraining16x16_18bins_360(:,1:size(hogFeature_16x16_18bins_360,2)) = hogFeature_16x16_18bins_360;
    dataTraining16x16_18bins_360(:,size(hogFeature_16x16_18bins_360,2)+1) = classData;
    save('data_training/dataTraining16x16_18bins_360','dataTraining16x16_18bins_360');

    dataTraining16x16_9bins_180 = (zeros(size(hogFeature_16x16_9bins_180,1),size(hogFeature_16x16_9bins_180,2)+1));
    dataTraining16x16_9bins_180(:,1:size(hogFeature_16x16_9bins_180,2)) = hogFeature_16x16_9bins_180;
    dataTraining16x16_9bins_180(:,size(hogFeature_16x16_9bins_180,2)+1) = classData;
    save('data_training/dataTraining16x16_9bins_180','dataTraining16x16_9bins_180');

    dataTraining16x16_9bins_360 = (zeros(size(hogFeature_16x16_9bins_360,1),size(hogFeature_16x16_9bins_360,2)+1));
    dataTraining16x16_9bins_360(:,1:size(hogFeature_16x16_9bins_360,2)) = hogFeature_16x16_9bins_360;
    dataTraining16x16_9bins_360(:,size(hogFeature_16x16_9bins_360,2)+1) = classData;
    save('data_training/dataTraining16x16_9bins_360','dataTraining16x16_9bins_360');

    %-------------------------------------------------------------------

    dataTraining8x8_18bins_180 = (zeros(size(hogFeature_8x8_18bins_180,1),size(hogFeature_8x8_18bins_180,2)+1));
    dataTraining8x8_18bins_180(:,1:size(hogFeature_8x8_18bins_180,2)) = hogFeature_8x8_18bins_180;
    dataTraining8x8_18bins_180(:,size(hogFeature_8x8_18bins_180,2)+1) = classData;
    save('data_training/dataTraining8x8_18bins_180','dataTraining8x8_18bins_180');

    dataTraining8x8_18bins_360 = (zeros(size(hogFeature_8x8_18bins_360,1),size(hogFeature_8x8_18bins_360,2)+1));
    dataTraining8x8_18bins_360(:,1:size(hogFeature_8x8_18bins_360,2)) = hogFeature_8x8_18bins_360;
    dataTraining8x8_18bins_360(:,size(hogFeature_8x8_18bins_360,2)+1) = classData;
    save('data_training/dataTraining8x8_18bins_360','dataTraining8x8_18bins_360');

    dataTraining8x8_9bins_180 = (zeros(size(hogFeature_8x8_9bins_180,1),size(hogFeature_8x8_9bins_180,2)+1));
    dataTraining8x8_9bins_180(:,1:size(hogFeature_8x8_9bins_180,2)) = hogFeature_8x8_9bins_180;
    dataTraining8x8_9bins_180(:,size(hogFeature_8x8_9bins_180,2)+1) = classData;
    save('data_training/dataTraining8x8_9bins_180','dataTraining8x8_9bins_180');

    dataTraining8x8_9bins_360 = (zeros(size(hogFeature_8x8_9bins_360,1),size(hogFeature_8x8_9bins_360,2)+1));
    dataTraining8x8_9bins_360(:,1:size(hogFeature_8x8_9bins_360,2)) = hogFeature_8x8_9bins_360;
    dataTraining8x8_9bins_360(:,size(hogFeature_8x8_9bins_360,2)+1) = classData;
    save('data_training/dataTraining8x8_9bins_360','dataTraining8x8_9bins_360');

    %-------------------------------------------------------------------

end