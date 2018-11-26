
function varargout = helmet_detection(varargin)
% HELMET_DETECTION MATLAB code for helmet_detection.fig
%      HELMET_DETECTION, by itself, creates a new HELMET_DETECTION or raises the existing
%      singleton*.
%
%      H = HELMET_DETECTION returns the handle to a new HELMET_DETECTION or the handle to
%      the existing singleton*.
%
%      HELMET_DETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELMET_DETECTION.M with the given input arguments.
%
%      HELMET_DETECTION('Property','Value',...) creates a new HELMET_DETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before helmet_detection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to helmet_detection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help helmet_detection

% Last Modified by GUIDE v2.5 09-Jul-2018 11:52:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @helmet_detection_OpeningFcn, ...
                   'gui_OutputFcn',  @helmet_detection_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before helmet_detection is made visible.
function helmet_detection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to helmet_detection (see VARARGIN)

% Choose default command line output for helmet_detection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes helmet_detection wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = helmet_detection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_browse.
function btn_browse_Callback(hObject, eventdata, handles)
% hObject    handle to btn_browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numFrames;
global mov;
global movGray;
global background;
global input_video_file;

% switch get(handles.popup_inputan,'Value')
%     case 1
        [ video_file_name,video_file_path ] = uigetfile({'*.mp4;*.mkv;*.mov'},'Pick a Video file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');
        if(video_file_path == 0)
            return;
        end

        input_video_file = [video_file_path,video_file_name];
        set(handles.edit1,'String',input_video_file);

        f = waitbar(0,'Input Data...');

        % Acquiring video
        videoObject = VideoReader(input_video_file);

        waitbar(.30,f,'Input Data...');
        disp('mengekstrak frame..');

        numFrames = 0;
        % figure;
        while hasFrame(videoObject)
            numFrames = numFrames+1;
            mov(numFrames).cdata = readFrame(videoObject);
        %     movGray(numFrames).cdata = imresize(mov(numFrames).cdata, [720 480]);
            movGray(numFrames).cdata = rgb2gray(mov(numFrames).cdata);
        %     imshow(uint8(mov(numFrames).cdata));
        end

        waitbar(.70,f,'Input Data...');

        disp('background substraction..');
        [height,width,depth] = size(movGray(1).cdata);
        background = zeros(height,width,depth);
        for i = 1:numFrames
            background = double(movGray(i).cdata) + background;
        end
        background = background/numFrames;

        figure;
        imshow(uint8(background));

        waitbar(.90,f,'Input Data...');

        % Display first frame
        % frame_1 = read(videoObject,1);
        frame_1 = mov(1).cdata;
        axes(handles.axes_input);
        imshow(frame_1);
        drawnow;
        axis(handles.axes_input,'off');
        % Display Frame Number
        set(handles.text3,'String','1');
        set(handles.text4,'String',['  /  ',num2str(numFrames)]);
        set(handles.text2,'Visible','on');
        set(handles.text3,'Visible','on');
        set(handles.text4,'Visible','on');
        set(handles.btn_start,'Enable','on');
        % set(handles.btn_browse,'Enable','off');
        %Update handles
        handles.videoObject = videoObject;
        guidata(hObject,handles);

        waitbar(1,f,'Input Data...');
        close(f);
%     case 2
%         [ video_file_name,video_file_path ] = uigetfile({'*.jpg;*.png;*.yuv;*.bmp;*.tif'},'Pick an Image file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');
%         if(video_file_path == 0)
%             return;
%         end
% 
%         input_video_file = [video_file_path,video_file_name];
%         input_video_file = imread(input_video_file);
%         axes(handles.axes_input);
%         imshow(input_video_file);
%         set(handles.btn_start,'Enable','on');
% end
% [ video_file_name,video_file_path ] = uigetfile({'*'},'Pick a video file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_start.
function btn_start_Callback(hObject, eventdata, handles)
% hObject    handle to btn_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global numFrames;
global mov;
global movGray;
global background;
global input_video_file;

% switch (get(handles.popup_inputan, 'Value'))
%     case 2
% %         hasilPreProcessing = preProcessing(input_video_file);
%         hasilPreProcessing = input_video_file;
%         [hogFeature] = hog_8x8_9bins_180(hasilPreProcessing, 'inputan gambar');
%         axes(handles.axes_crop_kepala);
%         imshow(input_video_file);
%         axes(handles.axes_crop_motor);
%         imshow(hasilPreProcessing);
%         axes(handles.axes_input_bw);
%         imshow(hasilPreProcessing);
%         imshowpair(Ix,Iy,'montage');
%         switch (get(handles.popup_metode, 'Value'))
%             case 1
%                 modelTraining = load('svm.mat');
%                 disp(['ukuran fitur input svm: ' num2str(size(hogFeature))]);
%                 hasilKlasifikasi = svmclassify(modelTraining.modelTrainingSVM, hogFeature);
%             case 2
%                 modelTraining = load('jst.mat');
%                 disp(['ukuran fitur input jst: ' num2str(size(hogFeature'))]);
%                 hasilKlasifikasi = modelTraining.modelTrainingJST(hogFeature');
%                 if hasilKlasifikasi < 0.5 
%                     hasilKlasifikasi = 0;
%                 else
%                     hasilKlasifikasi = 1;
%                 end
%             case 3
%                 modelTraining = load('knn.mat');
%                 disp(['ukuran fitur input knn: ' num2str(size(hogFeature))]);
%                 hasilKlasifikasi = predict(modelTraining.modelTrainingKNN, hogFeature);
%         end

%         modelTraining = load('model_training_svm_8x8_9bins_180_polynomial.mat');
%         disp(['ukuran fitur input svm: ' num2str(size(hogFeature))]);
%         hasilKlasifikasi = predict(modelTraining.model_training_svm, hogFeature);
% 
%         if hasilKlasifikasi == 0
%             hasilKlasifikasi = 'tidak menggunakan helm';
%         else
%             hasilKlasifikasi = 'menggunakan helm';
%         end
%         axes(handles.axes_crop_kepala);
%         imshow(input_video_file);
%         set(handles.txt_hasil,'String',hasilKlasifikasi);
%         set(handles.btn_exit,'Enable','on');
%     case 1
        videoObject = handles.videoObject;
        set(handles.btn_pause,'Enable','on');
        set(handles.btn_start,'Enable','off');
        axes(handles.axes_input);

        [height,width,depth] = size(movGray(1).cdata);
        line_pos = double(width/2);

        for frameCount = 2:1:numFrames
            % Display frames

        %     axes(handles.axes_crop_kepala);
        %     set(txt_hasil,'string',' ');
        %     cla reset;

            set(handles.text3,'String',num2str(frameCount));
            frame = movGray(frameCount).cdata;
            frame2 = mov(frameCount).cdata;

            Diff1 = uint8(abs((double((movGray(frameCount).cdata))) - double(background)));
            axes(handles.axes_input);
            imshow(frame2);
            Diff1 = im2bw(Diff1,0.1);
            Diff1 = bwareaopen(Diff1,150);    

            axes(handles.axes_input_bw);
            imshow(Diff1);

            line = Diff1(:,line_pos);
        %     disp(line_pos);
            sum1 = sum(line(:) == 1);
            disp(['jumlah titik dalam garis 1: ',num2str(sum1)]);
            if (sum1 > 90)
        %         disp(['jumlah titik dalam garis 2: ',num2str(sum1)]);
                ConnectedCommponent = bwconncomp(Diff1);
                regionProps=regionprops(ConnectedCommponent,'BoundingBox');
                if (numel(regionProps) > 1)
                    BB0=regionProps(1).BoundingBox;
                    for k=1:numel(regionProps)
                        BB=regionProps(k).BoundingBox;
                        disp(['bounding box: ', num2str(BB(1)),' ',num2str(BB(2))]);
                        if (BB0(3)*BB0(4)<BB(3)*BB(4))
                            BB0=BB;
                        end
                    end  
                end
                img_temp = movGray(frameCount).cdata;
                img_temp = immultiply(img_temp,Diff1);
                img_hasil = imcrop(img_temp,[BB0(1), BB0(2)-24, BB0(3), BB0(4)]);
                img_hasil2 = imcrop(frame2,[BB0(1), BB0(2)-24, BB0(3), BB0(4)]);
                axes(handles.axes_crop_motor);
                imshow(img_hasil2);
                [height,width,depth] = size(img_hasil);
                disp(['ukuran setelah dicrop pertama (h,w,d): ',num2str(height),' ',num2str(width),' ',num2str(depth)]);
                if (width > 150 && width < 500)
                    img_hasil_head = imcrop(img_hasil,[1 1 width height*25/100]);
                    img_hasil_head2 = imcrop(img_hasil2,[1 1 width height*25/100]);
%                     figure;
%                     imshowpair(img_hasil_head2,img_hasil_head,'montage');
                    img_hasil_head_bw = im2bw(img_hasil_head);
        %             img_hasil_head_bw = bwareaopen(img_hasil_head_bw,100);
                    ConnectedCommponent = bwconncomp(img_hasil_head_bw);
                    regionProps=regionprops(ConnectedCommponent,'BoundingBox');
                    if (numel(regionProps) > 1)
                        BB0=regionProps(1).BoundingBox;
                        for k=1:numel(regionProps)
                            BB=regionProps(k).BoundingBox;
                            if BB0(3)*BB0(4)<BB(3)*BB(4)
                                BB0=BB;
                            end
                        end  
                    end
                    img_hasil_head_crop = imcrop(img_hasil_head,[BB0(1), BB0(2), BB0(3), BB0(4)]);
                    img_hasil_head_crop2 = imcrop(img_hasil_head2,[BB0(1), BB0(2), BB0(3), BB0(4)]);
                    [height2,width2,depth2] = size(img_hasil_head_crop);
                    if (width2 > 1 && height2 > 1)
                        img_hasil_head_crop_resize = imresize(img_hasil_head_crop,[64 96]);
                        img_hasil_head_crop_resize2 = imresize(img_hasil_head_crop2,[64 96]);
                        [hogFeature] = hog_8x8_9bins_180(img_hasil_head_crop_resize, input_video_file);

%                         switch (get(handles.popup_metode, 'Value'))
%                             case 1
%                                 modelTraining = load('svm_8x8_9bins_180_Polynomial.mat');
%                                 disp(['ukuran fitur input svm: ' num2str(size(hogFeature))]);
%                                 hasilKlasifikasi = svmclassify(modelTraining.model_training_svm, hogFeature);
%                             case 2
%                                 modelTraining = load('jst_8x8_9bins_360_3.mat');
%                                 disp(['ukuran fitur input jst: ' num2str(size(hogFeature'))]);
%                                 hasilKlasifikasi = modelTraining.model_training_jst(hogFeature');
%                                 if hasilKlasifikasi < 0.5 
%                                     hasilKlasifikasi = 0;
%                                 else
%                                     hasilKlasifikasi = 1;
%                                 end
%                             case 3
%                                 modelTraining = load('knn_16x16_18bins_180_1.mat');
%                                 disp(['ukuran fitur input knn: ' num2str(size(hogFeature))]);
%                                 hasilKlasifikasi = predict(modelTraining.model_training_jst, hogFeature);
%                         end

                        modelTraining = load('model_training_svm_8x8_9bins_180_polynomial.mat');
                        disp(['ukuran fitur input svm: ' num2str(size(hogFeature))]);
                        hasilKlasifikasi = predict(modelTraining.model_training_svm, hogFeature);

                        if (hasilKlasifikasi == 1)
                            hasil_svm_text = 'Menggunakan Helm.';
                        else
                            hasil_svm_text = 'Tidak Menggunakan Helm';
                        end
                        axes(handles.axes_crop_kepala);
                        imshow(img_hasil_head_crop_resize);
                        set(handles.txt_hasil,'String',hasil_svm_text);
                    end
                end
            end
        %     axes(handles.axes_input);
        %     imshow(frame);
            drawnow;
        end

        set(handles.btn_exit,'Enable','on');
        set(handles.btn_pause,'Enable','off');
% end

% --- Executes on button press in btn_pause.
function btn_pause_Callback(hObject, eventdata, handles)
% hObject    handle to btn_pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(strcmp(get(handles.btn_pause,'String'),'Pause'))
    set(handles.btn_pause,'String','Play');
    uiwait();
else
    set(handles.btn_pause,'String','Pause');
    uiresume();
end

% --- Executes on button press in btn_exit.
function btn_exit_Callback(hObject, eventdata, handles)
% hObject    handle to btn_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1);


% --- Executes on selection change in popup_metode.
function popup_metode_Callback(hObject, eventdata, handles)
% hObject    handle to popup_metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_metode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_metode


% --- Executes during object creation, after setting all properties.
function popup_metode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_metode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_inputan.
function popup_inputan_Callback(hObject, eventdata, handles)
% hObject    handle to popup_inputan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_inputan contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_inputan


% --- Executes during object creation, after setting all properties.
function popup_inputan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_inputan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
