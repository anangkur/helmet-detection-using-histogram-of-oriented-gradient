clc;
clear;
close all;

input_data_training();

training_jst();
training_svm();
training_knn();

input_data_testing();

testing_svm();
testing_jst();
testing_knn();

disp('selesai..');