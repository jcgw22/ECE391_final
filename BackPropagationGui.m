function varargout = BackPropagationGui(varargin)
% BACKPROPAGATIONGUI MATLAB code for BackPropagationGui.fig
%      BACKPROPAGATIONGUI, by itself, creates a new BACKPROPAGATIONGUI or raises the existing
%      singleton*.
%
%      H = BACKPROPAGATIONGUI returns the handle to a new BACKPROPAGATIONGUI or the handle to
%      the existing singleton*.
%
%      BACKPROPAGATIONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BACKPROPAGATIONGUI.M with the given input arguments.
%
%      BACKPROPAGATIONGUI('Property','Value',...) creates a new BACKPROPAGATIONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the BACKPROPAGATIONGUI before BackPropagationGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BackPropagationGui_OpeningFcn via varargin.
%
%      *See BACKPROPAGATIONGUI Options on GUIDE's Tools menu.  Choose "BACKPROPAGATIONGUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BackPropagationGui

% Last Modified by GUIDE v2.5 05-Feb-2019 17:26:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'BackPropagationGui_OpeningFcn', @BackPropagationGui_OpeningFcn, ...
                   'BackPropagationGui_OutputFcn',  @BackPropagationGui_OutputFcn, ...
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


% --- Executes just before BackPropagationGui is made visible.
function BackPropagationGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BackPropagationGui (see VARARGIN)

% Choose default command line output for BackPropagationGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BackPropagationGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BackPropagationGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function BackPropagationNumberOfHidenLayers_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationNumberOfHidenLayers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BackPropagationNumberOfHidenLayers as text
%        str2double(get(hObject,'String')) returns contents of BackPropagationNumberOfHidenLayers as a double


% --- Executes during object creation, after setting all properties.
function BackPropagationNumberOfHidenLayers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BackPropagationNumberOfHidenLayers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BackPropagationNumberOfNeurons_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationNumberOfNeurons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BackPropagationNumberOfNeurons as text
%        str2double(get(hObject,'String')) returns contents of BackPropagationNumberOfNeurons as a double


% --- Executes during object creation, after setting all properties.
function BackPropagationNumberOfNeurons_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BackPropagationNumberOfNeurons (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in BackPropagationActivationFunction.
function BackPropagationActivationFunction_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationActivationFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns BackPropagationActivationFunction contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BackPropagationActivationFunction


% --- Executes during object creation, after setting all properties.
function BackPropagationActivationFunction_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BackPropagationActivationFunction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in BackPropagationTrainingCriteria.
function BackPropagationTrainingCriteria_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationTrainingCriteria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns BackPropagationTrainingCriteria contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BackPropagationTrainingCriteria


% --- Executes during object creation, after setting all properties.
function BackPropagationTrainingCriteria_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BackPropagationTrainingCriteria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BackPropagationTrainigFile_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationTrainigFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BackPropagationTrainigFile as text
%        str2double(get(hObject,'String')) returns contents of BackPropagationTrainigFile as a double


% --- Executes during object creation, after setting all properties.
function BackPropagationTrainigFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BackPropagationTrainigFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in BackPropagationStartBtn.
function BackPropagationStartBtn_Callback(hObject, eventdata, handles)
% hObject    handle to BackPropagationStartBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
