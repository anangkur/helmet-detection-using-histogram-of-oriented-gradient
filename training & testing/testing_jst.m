function [  ] = testing_jst(  )
%TESTING_jst Summary of this function goes here
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
    disp('Testing jst 1..');
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_180_1.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1)');
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_180_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_360_1.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_360_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_180_1.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_180_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_360_1.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_360_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_180_1.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_180_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_360_1.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_360_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_180_1.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_180_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_360_1.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_360_1: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing jst 2..');
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_180_3.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_180_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_360_3.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_360_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_180_3.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_180_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_360_3.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_360_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_180_3.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_180_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_360_3.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_360_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_180_3.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_180_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_360_3.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_360_3: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    disp(' ');
    disp('Testing jst _5..');
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_180_5.mat');
    classData = dataTesting16x16_18bins_180(:,size(dataTesting16x16_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_180(:,1:size(dataTesting16x16_18bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_180_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_18bins_360_5.mat');
    classData = dataTesting16x16_18bins_360(:,size(dataTesting16x16_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_18bins_360(:,1:size(dataTesting16x16_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_18bins_360_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_180_5.mat');
    classData = dataTesting16x16_9bins_180(:,size(dataTesting16x16_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_180(:,1:size(dataTesting16x16_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_180_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_16x16_9bins_360_5.mat');
    classData = dataTesting16x16_9bins_360(:,size(dataTesting16x16_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting16x16_9bins_360(:,1:size(dataTesting16x16_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_16x16_9bins_360_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_180_5.mat');
    classData = dataTesting8x8_18bins_180(:,size(dataTesting8x8_18bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_180(:,1:size(dataTesting8x8_18bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_180_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_18bins_360_5.mat');
    classData = dataTesting8x8_18bins_360(:,size(dataTesting8x8_18bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_18bins_360(:,1:size(dataTesting8x8_18bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_18bins_360_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_180_5.mat');
    classData = dataTesting8x8_9bins_180(:,size(dataTesting8x8_9bins_180,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_180(:,1:size(dataTesting8x8_9bins_180,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_180_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
    
    modeljst = load('model_jst/model_training_jst_8x8_9bins_360_5.mat');
    classData = dataTesting8x8_9bins_360(:,size(dataTesting8x8_9bins_360,2));
    
    hasilTestingjst = modeljst.model_training_jst( dataTesting8x8_9bins_360(:,1:size(dataTesting8x8_9bins_360,2)-1)');
    
    
    for i = 1:size(hasilTestingjst,2)
        if(hasilTestingjst(i)<0.5)
            hasilTestingjst(i) = 0;
        else
            hasilTestingjst(i) = 1;
        end
    end
    
    
    tpjst = 0;
    tnjst = 0;
    fpjst = 0;
    fnjst = 0;

    for i = 1:100
        if (classData(i) == 1 && hasilTestingjst(i) == 1)
            tpjst = tpjst+1;
        elseif (classData(i) == 1 && hasilTestingjst(i) == 0)
            fnjst = fnjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 1)
            fpjst = fpjst+1;
        elseif (classData(i) == 0 && hasilTestingjst(i) == 0)
            tnjst = tnjst+1;
        end

        if(hasilTestingjst(i) == 1)
            hasil = 'Menggunakan Helm';
        else
            hasil = 'tidak menggunakan helm';
        end
    end

    akurasijst = ((tpjst+tnjst)/(tpjst+tnjst+fpjst+fnjst))*100;
    presisijst = (tpjst/(tpjst+fpjst))*100;
    recalljst = (tpjst/(tpjst+fnjst))*100;
    fmeasurejst = ((2*(recalljst * presisijst))/(recalljst + presisijst));

    disp(' ');
    disp('performansi jst_8x8_9bins_360_5: ');
    disp(['akurasi: ',num2str(akurasijst),'%']);
    disp(['presisi: ',num2str(presisijst),'%']);
    disp(['recall: ',num2str(recalljst),'%']);
    disp(['fmeasure: ',num2str(fmeasurejst),'%']);
    disp(' ');

    %-------------------------------------------------------------------
end

