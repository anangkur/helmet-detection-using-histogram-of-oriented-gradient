function [  ] = training_knn(  )

    dataTraining16x16_18bins_180 = load('data_training/dataTraining16x16_18bins_180.mat');
    dataTraining16x16_18bins_180 = dataTraining16x16_18bins_180.dataTraining16x16_18bins_180;
    
    dataTraining16x16_18bins_360 = load('data_training/dataTraining16x16_18bins_360.mat');
    dataTraining16x16_18bins_360 = dataTraining16x16_18bins_360.dataTraining16x16_18bins_360;
    
    dataTraining16x16_9bins_180 = load('data_training/dataTraining16x16_9bins_180.mat');
    dataTraining16x16_9bins_180 = dataTraining16x16_9bins_180.dataTraining16x16_9bins_180;
    
    dataTraining16x16_9bins_360 = load('data_training/dataTraining16x16_9bins_360.mat');
    dataTraining16x16_9bins_360 = dataTraining16x16_9bins_360.dataTraining16x16_9bins_360;
    
    dataTraining8x8_18bins_180 = load('data_training/dataTraining8x8_18bins_180.mat');
    dataTraining8x8_18bins_180 = dataTraining8x8_18bins_180.dataTraining8x8_18bins_180;
    
    dataTraining8x8_18bins_360 = load('data_training/dataTraining8x8_18bins_360.mat');
    dataTraining8x8_18bins_360 = dataTraining8x8_18bins_360.dataTraining8x8_18bins_360;
    
    dataTraining8x8_9bins_180 = load('data_training/dataTraining8x8_9bins_180.mat');
    dataTraining8x8_9bins_180 = dataTraining8x8_9bins_180.dataTraining8x8_9bins_180;
    
    dataTraining8x8_9bins_360 = load('data_training/dataTraining8x8_9bins_360.mat');
    dataTraining8x8_9bins_360 = dataTraining8x8_9bins_360.dataTraining8x8_9bins_360;
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    disp('Training KNN neighbor 1..');
    
    
    model_training_knn = fitcknn(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_16x16_18bins_180_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_16x16_18bins_360_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_16x16_9bins_360_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_16x16_9bins_180_1','model_training_knn');
    %-----------------------------------------------------------------
    
    model_training_knn = fitcknn(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_8x8_18bins_180_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_8x8_18bins_360_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_8x8_9bins_360_1','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'NumNeighbors',1);
    save('model_knn/model_training_knn_8x8_9bins_180_1','model_training_knn');
    %-----------------------------------------------------------------
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    disp('Training KNN neighbor 3..');
    
    model_training_knn = fitcknn(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_16x16_18bins_180_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_16x16_18bins_360_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_16x16_9bins_360_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_16x16_9bins_180_3','model_training_knn');
    %-----------------------------------------------------------------
    
    model_training_knn = fitcknn(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_8x8_18bins_180_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_8x8_18bins_360_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_8x8_9bins_360_3','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'NumNeighbors',3);
    save('model_knn/model_training_knn_8x8_9bins_180_3','model_training_knn');
    %-----------------------------------------------------------------
    
    disp('Training KNN neighbor 5..');
    
    model_training_knn = fitcknn(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_16x16_18bins_180_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_16x16_18bins_360_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_16x16_9bins_360_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_16x16_9bins_180_5','model_training_knn');
    %-----------------------------------------------------------------
    
    model_training_knn = fitcknn(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_8x8_18bins_180_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_8x8_18bins_360_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_8x8_9bins_360_5','model_training_knn');
    %-----------------------------------------------------------------
    model_training_knn = fitcknn(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'NumNeighbors',5);
    save('model_knn/model_training_knn_8x8_9bins_180_5','model_training_knn');
    %-----------------------------------------------------------------
end