function [  ] = testing_knn(  )
%TESTING_knn Summary of this function goes here
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
    disp('Testing knn 1..');
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_180_1.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_180_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_360_1.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_360_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_180_1.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_180_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_360_1.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_360_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_180_1.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_180_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_360_1.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_360_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_180_1.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_180_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_360_1.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_360_1: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing knn 3..');
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_180_3.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_180_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_360_3.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_360_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_180_3.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_180_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_360_3.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_360_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_180_3.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_180_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_360_3.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_360_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_180_3.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_180_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_360_3.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_360_3: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing knn 5..');
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_180_5.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_180_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_18bins_360_5.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_18bins_360_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_180_5.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_180_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_16x16_9bins_360_5.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_16x16_9bins_360_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_180_5.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_180_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_18bins_360_5.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_18bins_360_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_180_5.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_180_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modelknn = load('model_knn/model_training_knn_8x8_9bins_360_5.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingknn = predict(modelknn.model_training_knn, dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1));
    
    tpknn = 0;
    tnknn = 0;
    fpknn = 0;
    fnknn = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingknn(i) == 1)
            tpknn = tpknn+1;
        elseif (classData(i) == 1 && hasilTestingknn(i) == 0)
            fnknn = fnknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 1)
            fpknn = fpknn+1;
        elseif (classData(i) == 0 && hasilTestingknn(i) == 0)
            tnknn = tnknn+1;
        end

        if(hasilTestingknn(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasiknn = ((tpknn+tnknn)/(tpknn+tnknn+fpknn+fnknn))*100;
    presisiknn = (tpknn/(tpknn+fpknn))*100;
    recallknn = (tpknn/(tpknn+fnknn))*100;
    fmeasureknn = ((2*(recallknn * presisiknn))/(recallknn + presisiknn));

    disp(' ');
    disp('performansi knn_8x8_9bins_360_5: ');
    disp(['akurasi: ',num2str(akurasiknn),'%']);
    disp(['presisi: ',num2str(presisiknn),'%']);
    disp(['recall: ',num2str(recallknn),'%']);
    disp(['fmeasure: ',num2str(fmeasureknn),'%']);
    disp(' ');

    %-------------------------------------------------------------------
end

