clc;
clear;



disp(' ');
disp('Testing SVM linear..');
modelSVM = load('svm_model_16x16_18bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_18bins, hogFeature_16x16_18bins);

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
disp('performansi svm_model_16x16_18bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_16x16_9bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_9bins, hogFeature_16x16_9bins);

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
disp('performansi svm_model_16x16_9bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_18bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_18bins, hogFeature_8x8_18bins);

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
disp('performansi svm_model_8x8_18bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_9bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_9bins, hogFeature_8x8_9bins);

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
disp('performansi svm_model_8x8_9bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_18bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_18bins, hogFeature_4x4_18bins);

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
disp('performansi svm_model_4x4_18bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_9bins_linear.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_9bins, hogFeature_4x4_9bins);

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
disp('performansi svm_model_4x4_9bins_linear: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

disp(' ');
disp('Testing SVM Polynomial..');
modelSVM = load('svm_model_16x16_18bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_18bins, hogFeature_16x16_18bins);

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
disp('performansi svm_model_16x16_18bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_16x16_9bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_9bins, hogFeature_16x16_9bins);

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
disp('performansi svm_model_16x16_9bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_18bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_18bins, hogFeature_8x8_18bins);

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
disp('performansi svm_model_8x8_18bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_9bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_9bins, hogFeature_8x8_9bins);

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
disp('performansi svm_model_8x8_9bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_18bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_18bins, hogFeature_4x4_18bins);

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
disp('performansi svm_model_4x4_18bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_9bins_Polynomial.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_9bins, hogFeature_4x4_9bins);

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
disp('performansi svm_model_4x4_9bins_Polynomial: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

disp(' ');
disp('Testing SVM RBF..');
modelSVM = load('svm_model_16x16_18bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_18bins, hogFeature_16x16_18bins);

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
disp('performansi svm_model_16x16_18bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_16x16_9bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_16x16_9bins, hogFeature_16x16_9bins);

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
disp('performansi svm_model_16x16_9bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_18bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_18bins, hogFeature_8x8_18bins);

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
disp('performansi svm_model_8x8_18bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_8x8_9bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_8x8_9bins, hogFeature_8x8_9bins);

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
disp('performansi svm_model_8x8_9bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_18bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_18bins, hogFeature_4x4_18bins);

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
disp('performansi svm_model_4x4_18bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

modelSVM = load('svm_model_4x4_9bins_RBF.mat');
hasilTestingSVM = predict(modelSVM.modelTrainingSVM_4x4_9bins, hogFeature_4x4_9bins);

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
disp('performansi svm_model_4x4_9bins_RBF: ');
disp(['akurasi: ',num2str(akurasiSVM),'%']);
disp(['presisi: ',num2str(presisiSVM),'%']);
disp(['recall: ',num2str(recallSVM),'%']);
disp(['fmeasure: ',num2str(fmeasureSVM),'%']);
disp(' ');

disp('Testing KNN K1..');
modelKNN = load('knn_model_16x16_18bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_18bins, hogFeature_16x16_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_18bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_16x16_9bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_9bins, hogFeature_16x16_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_9bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_18bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_18bins, hogFeature_8x8_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_18bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_9bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_9bins, hogFeature_8x8_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_9bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_18bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_18bins, hogFeature_4x4_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_18bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_9bins_K1.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_9bins, hogFeature_4x4_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_9bins_K1: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

disp('Testing KNN K3..');
modelKNN = load('knn_model_16x16_18bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_18bins, hogFeature_16x16_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_18bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_16x16_9bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_9bins, hogFeature_16x16_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_9bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_18bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_18bins, hogFeature_8x8_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_18bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_9bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_9bins, hogFeature_8x8_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_9bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_18bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_18bins, hogFeature_4x4_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_18bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_9bins_K3.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_9bins, hogFeature_4x4_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_9bins_K3: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

disp('Testing KNN K5..');
modelKNN = load('knn_model_16x16_18bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_18bins, hogFeature_16x16_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_18bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_16x16_9bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_16x16_9bins, hogFeature_16x16_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_16x16_9bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_18bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_18bins, hogFeature_8x8_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_18bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_8x8_9bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_8x8_9bins, hogFeature_8x8_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_8x8_9bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_18bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_18bins, hogFeature_4x4_18bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_18bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

modelKNN = load('knn_model_4x4_9bins_K5.mat');
hasilTestingKNN = predict(modelKNN.modelTrainingKNN_4x4_9bins, hogFeature_4x4_9bins);

tpKNN = 0;
tnKNN = 0;
fpKNN = 0;
fnKNN = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingKNN(i) == 1)
        tpKNN = tpKNN+1;
    elseif (classData(i) == 1 && hasilTestingKNN(i) == 0)
        fnKNN = fnKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 1)
        fpKNN = fpKNN+1;
    elseif (classData(i) == 0 && hasilTestingKNN(i) == 0)
        tnKNN = tnKNN+1;
    end
    
    if(hasilTestingKNN(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiKNN = ((tpKNN+tnKNN)/(tpKNN+tnKNN+fpKNN+fnKNN))*100;
presisiKNN = (tpKNN/(tpKNN+fpKNN))*100;
recallKNN = (tpKNN/(tpKNN+fnKNN))*100;
fmeasureKNN = ((2*(recallKNN * presisiKNN))/(recallKNN + presisiKNN));

disp(' ');
disp('performansi knn_model_4x4_9bins_K5: ');
disp(['akurasi: ',num2str(akurasiKNN),'%']);
disp(['presisi: ',num2str(presisiKNN),'%']);
disp(['recall: ',num2str(recallKNN),'%']);
disp(['fmeasure: ',num2str(fmeasureKNN),'%']);
disp(' ');

disp('Testing JST 1..');
modelJST = load('jst_model_16x16_18bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_18bins(hogFeature_16x16_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_18bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_16x16_9bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_9bins(hogFeature_16x16_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_9bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_18bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_18bins(hogFeature_8x8_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_18bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_9bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_9bins(hogFeature_8x8_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_9bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_18bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_18bins(hogFeature_4x4_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_18bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_9bins_1.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_9bins(hogFeature_4x4_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_9bins_1: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

disp('Testing JST 3..');
modelJST = load('jst_model_16x16_18bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_18bins(hogFeature_16x16_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_18bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_16x16_9bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_9bins(hogFeature_16x16_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_9bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_18bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_18bins(hogFeature_8x8_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_18bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_9bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_9bins(hogFeature_8x8_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_9bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_18bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_18bins(hogFeature_4x4_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_18bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_9bins_3.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_9bins(hogFeature_4x4_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_9bins_3: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

disp('Testing JST 5..');
modelJST = load('jst_model_16x16_18bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_18bins(hogFeature_16x16_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_18bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_16x16_9bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_16x16_9bins(hogFeature_16x16_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_16x16_9bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_18bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_18bins(hogFeature_8x8_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_18bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_8x8_9bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_8x8_9bins(hogFeature_8x8_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_8x8_9bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_18bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_18bins(hogFeature_4x4_18bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_18bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');

modelJST = load('jst_model_4x4_9bins_5.mat');
hasilTestingJST = modelJST.modelTrainingJST_4x4_9bins(hogFeature_4x4_9bins');
for i=1:size(hasilTestingJST,2)
    if (hasilTestingJST(i) < 0.5)
        hasilTestingJST(i) = 0;
    else
        hasilTestingJST(i) = 1;
    end
end
hasilTestingJST = hasilTestingJST';

tpJST = 0;
tnJST = 0;
fpJST = 0;
fnJST = 0;

for i = 1:100
    if (classData(i) == 1 && hasilTestingJST(i) == 1)
        tpJST = tpJST+1;
    elseif (classData(i) == 1 && hasilTestingJST(i) == 0)
        fnJST = fnJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 1)
        fpJST = fpJST+1;
    elseif (classData(i) == 0 && hasilTestingJST(i) == 0)
        tnJST = tnJST+1;
    end
    
    if(hasilTestingJST(i) == 1)
        hasil = 'Menggunakan Helm';
    else
        hasil = 'tidak menggunakan helm';
    end
end

akurasiJST = ((tpJST+tnJST)/(tpJST+tnJST+fpJST+fnJST))*100;
presisiJST = (tpJST/(tpJST+fpJST))*100;
recallJST = (tpJST/(tpJST+fnJST))*100;
fmeasureJST = ((2*(recallJST * presisiJST))/(recallJST + presisiJST));

disp(' ');
disp('performansi jst_model_4x4_9bins_5: ');
disp(['akurasi: ',num2str(akurasiJST),'%']);
disp(['presisi: ',num2str(presisiJST),'%']);
disp(['recall: ',num2str(recallJST),'%']);
disp(['fmeasure: ',num2str(fmeasureJST),'%']);
disp(' ');