function [  ] = testing_svm(  )
%TESTING_SVM Summary of this function goes here
%   Detailed explanation goes here

    dataTesting16x16_18bins_180 = load('data_testing/dataTesting16x16_18bins_180.mat');
    dataTesting16x16_18bins_180 = dataTesting16x16_18bins_180.dataTesting16x16_18bins_180;
    
    dataTesting16x16_18bins_360 = load('data_testing/dataTesting16x16_18bins_360.mat');
    dataTesting16x16_18bins_360 = dataTesting16x16_18bins_360.dataTesting16x16_18bins_360;
    
    dataTesting16x16_9bins_180 = load('data_testing/dataTesting16x16_9bins_180.mat');
    dataTesting16x16_9bins_180 = dataTesting16x16_9bins_180.dataTesting16x16_9bins_180;
    
    dataTesting16x16_9bins_360 = load('data_testing/dataTesting16x16_9bins_360.mat');
    dataTesting16x16_9bins_360 = dataTesting16x16_9bins_360.dataTesting16x16_9bins_360;
    
    dataTesting8x8_18bins_180 = load('data_testing/dataTesting8x8_18bins_180.mat');
    dataTesting8x8_18bins_180 = dataTesting8x8_18bins_180.dataTesting8x8_18bins_180;
    
    dataTesting8x8_18bins_360 = load('data_testing/dataTesting8x8_18bins_360.mat');
    dataTesting8x8_18bins_360 = dataTesting8x8_18bins_360.dataTesting8x8_18bins_360;
    
    dataTesting8x8_9bins_180 = load('data_testing/dataTesting8x8_9bins_180.mat');
    dataTesting8x8_9bins_180 = dataTesting8x8_9bins_180.dataTesting8x8_9bins_180;
    
    dataTesting8x8_9bins_360 = load('data_testing/dataTesting8x8_9bins_360.mat');
    dataTesting8x8_9bins_360 = dataTesting8x8_9bins_360.dataTesting8x8_9bins_360;
    
    %-------------------------------------------------------------------
    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing SVM linear..');
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_180_linear.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_180_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_360_linear.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_360_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_180_linear.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_180_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_360_linear.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_360_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_180_linear.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_180_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_360_linear.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_360_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_180_linear.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end
    
    disp(['tp: ',tpSVM]);
    disp(['tn: ',tnSVM]);
    disp(['fp: ',fpSVM]);
    disp(['fn: ',fnSVM]);

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_180_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_360_linear.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_360_linear: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing SVM RBF..');
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_180_RBF.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_180_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_360_RBF.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_360_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_180_RBF.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_180_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_360_RBF.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_360_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_180_RBF.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_180_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_360_RBF.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_360_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_180_RBF.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_180_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_360_RBF.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_360_RBF: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing SVM Polynomial..');
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_180_Polynomial.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_180_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_18bins_360_Polynomial.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_18bins_360_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_180_Polynomial.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_180_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_16x16_9bins_360_Polynomial.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_16x16_9bins_360_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_180_Polynomial.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_180_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_18bins_360_Polynomial.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_18bins_360_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_180_Polynomial.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));

    save('kelas_testing','classData');
    save('hasil_testing_svm_8x8_9bins_180_Polynomial','hasilTestingSVM');
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end
    
    disp(['tp: ',num2str(tpSVM)]);
    disp(['tn: ',num2str(tnSVM)]);
    disp(['fp: ',num2str(fpSVM)]);
    disp(['fn: ',num2str(fnSVM)]);

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_180_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelSVM = load('model_svm/model_training_svm_8x8_9bins_360_Polynomial.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingSVM = predict(modelSVM.model_training_svm, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpSVM = 0;
    tnSVM = 0;
    fpSVM = 0;
    fnSVM = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingSVM(i) == 1)
            tpSVM = tpSVM+1;
        elseif (classData(i) == 1 && hasilTestingSVM(i) == 0)
            fnSVM = fnSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 1)
            fpSVM = fpSVM+1;
        elseif (classData(i) == 0 && hasilTestingSVM(i) == 0)
            tnSVM = tnSVM+1;
        end

        if(hasilTestingSVM(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiSVM = ((tpSVM+tnSVM)/(tpSVM+tnSVM+fpSVM+fnSVM))*100;
    presisiSVM = (tpSVM/(tpSVM+fpSVM))*100;
    recallSVM = (tpSVM/(tpSVM+fnSVM))*100;
    fmeasureSVM = ((2*(recallSVM * presisiSVM))/(recallSVM + presisiSVM));

    disp(' ');
    disp('performansi svm_8x8_9bins_360_Polynomial: ');
    disp(['akurasi: ',num2str(akurasiSVM),'%']);
    disp(['presisi: ',num2str(presisiSVM),'%']);
    disp(['recall: ',num2str(recallSVM),'%']);
    disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
    disp(' ');

    %-------------------------------------------------------------------
end

