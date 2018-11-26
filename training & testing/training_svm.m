function [  ] = training_svm(  )

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

    disp('Training SVM Linear..');
    
    model_training_svm = fitcsvm(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_16x16_18bins_180_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_16x16_18bins_360_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_16x16_9bins_180_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_16x16_9bins_360_Linear','model_training_svm');
    %-----------------------------------------------------------------
    
    model_training_svm = fitcsvm(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_8x8_18bins_180_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_8x8_18bins_360_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_8x8_9bins_180_Linear','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'kernelFunction','linear');
    save('model_svm/model_training_svm_8x8_9bins_360_Linear','model_training_svm');
    %-----------------------------------------------------------------
    
    disp('Training SVM RBF..');
    
    model_training_svm = fitcsvm(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_16x16_18bins_180_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_16x16_18bins_360_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_16x16_9bins_180_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_16x16_9bins_360_RBF','model_training_svm');
    %-----------------------------------------------------------------
    
    model_training_svm = fitcsvm(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_8x8_18bins_180_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_8x8_18bins_360_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_8x8_9bins_180_RBF','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'kernelFunction','RBF');
    save('model_svm/model_training_svm_8x8_9bins_360_RBF','model_training_svm');
    %-----------------------------------------------------------------
    
    disp('Training SVM Polynomial..');
    
    model_training_svm = fitcsvm(dataTraining16x16_18bins_180(:,1:size(dataTraining16x16_18bins_180,2)-1),dataTraining16x16_18bins_180(:,size(dataTraining16x16_18bins_180,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_16x16_18bins_180_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_18bins_360(:,1:size(dataTraining16x16_18bins_360,2)-1),dataTraining16x16_18bins_360(:,size(dataTraining16x16_18bins_360,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_16x16_18bins_360_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_180(:,1:size(dataTraining16x16_9bins_180,2)-1),dataTraining16x16_9bins_180(:,size(dataTraining16x16_9bins_180,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_16x16_9bins_180_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining16x16_9bins_360(:,1:size(dataTraining16x16_9bins_360,2)-1),dataTraining16x16_9bins_360(:,size(dataTraining16x16_9bins_360,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_16x16_9bins_360_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    
    model_training_svm = fitcsvm(dataTraining8x8_18bins_180(:,1:size(dataTraining8x8_18bins_180,2)-1),dataTraining8x8_18bins_180(:,size(dataTraining8x8_18bins_180,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_8x8_18bins_180_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_18bins_360(:,1:size(dataTraining8x8_18bins_360,2)-1),dataTraining8x8_18bins_360(:,size(dataTraining8x8_18bins_360,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_8x8_18bins_360_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_180(:,1:size(dataTraining8x8_9bins_180,2)-1),dataTraining8x8_9bins_180(:,size(dataTraining8x8_9bins_180,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_8x8_9bins_180_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
    model_training_svm = fitcsvm(dataTraining8x8_9bins_360(:,1:size(dataTraining8x8_9bins_360,2)-1),dataTraining8x8_9bins_360(:,size(dataTraining8x8_9bins_360,2)),'kernelFunction','Polynomial');
    save('model_svm/model_training_svm_8x8_9bins_360_Polynomial','model_training_svm');
    %-----------------------------------------------------------------
end