function [  ] = training_jst(  )

    input = load('data_training/dataTraining16x16_18bins_180.mat');
    dataTraining16x16_18bins_180 = input.dataTraining16x16_18bins_180;
    
    input = load('data_training/dataTraining16x16_18bins_360.mat');
    dataTraining16x16_18bins_360 = input.dataTraining16x16_18bins_360;
    
    input = load('data_training/dataTraining16x16_9bins_180.mat');
    dataTraining16x16_9bins_180 = input.dataTraining16x16_9bins_180;
    
    input = load('data_training/dataTraining16x16_9bins_360.mat');
    dataTraining16x16_9bins_360 = input.dataTraining16x16_9bins_360;
    
    input = load('data_training/dataTraining8x8_18bins_180.mat');
    dataTraining8x8_18bins_180 = input.dataTraining8x8_18bins_180;
    
    input = load('data_training/dataTraining8x8_18bins_360.mat');
    dataTraining8x8_18bins_360 = input.dataTraining8x8_18bins_360;
    
    input = load('data_training/dataTraining8x8_9bins_180.mat');
    dataTraining8x8_9bins_180 = input.dataTraining8x8_9bins_180;
    
    input = load('data_training/dataTraining8x8_9bins_360.mat');
    dataTraining8x8_9bins_360 = input.dataTraining8x8_9bins_360;
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    disp('Training JST 1 Hidden Layer..');
    
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1)',dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2))');
    save('model_jst/model_training_jst_16x16_18bins_180_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1)',dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2))');
    save('model_jst/model_training_jst_16x16_18bins_360_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1)',dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2))');
    save('model_jst/model_training_jst_16x16_9bins_360_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1)',dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2))');
    save('model_jst/model_training_jst_16x16_9bins_180_1','model_training_jst');
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1)',dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2))');
    save('model_jst/model_training_jst_8x8_18bins_180_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1)',dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2))');
    save('model_jst/model_training_jst_8x8_18bins_360_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1)',dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2))');
    save('model_jst/model_training_jst_8x8_9bins_360_1','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(1);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1)',dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2))');
    save('model_jst/model_training_jst_8x8_9bins_180_1','model_training_jst');
    %-----------------------------------------------------------------
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    disp('Training JST 3 Hidden Layer..');
    
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1)',dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2))');
    save('model_jst/model_training_jst_16x16_18bins_180_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1)',dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2))');
    save('model_jst/model_training_jst_16x16_18bins_360_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1)',dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2))');
    save('model_jst/model_training_jst_16x16_9bins_360_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1)',dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2))');
    save('model_jst/model_training_jst_16x16_9bins_180_3','model_training_jst');
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1)',dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2))');
    save('model_jst/model_training_jst_8x8_18bins_180_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1)',dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2))');
    save('model_jst/model_training_jst_8x8_18bins_360_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1)',dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2))');
    save('model_jst/model_training_jst_8x8_9bins_360_3','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(3);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1)',dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2))');
    save('model_jst/model_training_jst_8x8_9bins_180_3','model_training_jst');
    %-----------------------------------------------------------------
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    disp('Training JST 5 Hidden Layer..');
    
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1)',dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2))');
    save('model_jst/model_training_jst_16x16_18bins_180_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1)',dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2))');
    save('model_jst/model_training_jst_16x16_18bins_360_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1)',dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2))');
    save('model_jst/model_training_jst_16x16_9bins_360_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1)',dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2))');
    save('model_jst/model_training_jst_16x16_9bins_180_5','model_training_jst');
    
    %-----------------------------------------------------------------
    %-----------------------------------------------------------------
    
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1)',dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2))');
    save('model_jst/model_training_jst_8x8_18bins_180_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1)',dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2))');
    save('model_jst/model_training_jst_8x8_18bins_360_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1)',dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2))');
    save('model_jst/model_training_jst_8x8_9bins_360_5','model_training_jst');
    %-----------------------------------------------------------------
    model_training_jst = fitnet(5);
    model_training_jst = train(model_training_jst,dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1)',dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2))');
    save('model_jst/model_training_jst_8x8_9bins_180_5','model_training_jst');
    %-----------------------------------------------------------------
end