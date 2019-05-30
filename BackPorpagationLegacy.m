function varargout = BackPorpagationLegacy(varargin)
% BACKPORPAGATIONLEGACY MATLAB code for BackPorpagationLegacy.fig
%      BACKPORPAGATIONLEGACY, by itself, creates a new BACKPORPAGATIONLEGACY or raises the existing
%      singleton*.
%
%      H = BACKPORPAGATIONLEGACY returns the handle to a new BACKPORPAGATIONLEGACY or the handle to
%      the existing singleton*.
%
%      BACKPORPAGATIONLEGACY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BACKPORPAGATIONLEGACY.M with the given input arguments.
%
%      BACKPORPAGATIONLEGACY('Property','Value',...) creates a new BACKPORPAGATIONLEGACY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BackPorpagationLegacy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BackPorpagationLegacy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BackPorpagationLegacy

% Last Modified by GUIDE v2.5 30-May-2019 17:31:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @BackPorpagationLegacy_OpeningFcn, ...
    'gui_OutputFcn',  @BackPorpagationLegacy_OutputFcn, ...
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


% --- Executes just before BackPorpagationLegacy is made visible.
function BackPorpagationLegacy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BackPorpagationLegacy (see VARARGIN)

% Choose default command line output for BackPorpagationLegacy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BackPorpagationLegacy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BackPorpagationLegacy_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function SN_Callback(hObject, eventdata, handles)
% hObject    handle to SN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SN as text
%        str2double(get(hObject,'String')) returns contents of SN as a double


% --- Executes during object creation, after setting all properties.
function SN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PT_Callback(hObject, eventdata, handles)
% hObject    handle to PT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PT as text
%        str2double(get(hObject,'String')) returns contents of PT as a double


% --- Executes during object creation, after setting all properties.
function PT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in AF.
function AF_Callback(hObject, eventdata, handles)
% hObject    handle to AF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns AF contents as cell array
%        contents{get(hObject,'Value')} returns selected item from AF


% --- Executes during object creation, after setting all properties.
function AF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IND_Callback(hObject, eventdata, handles)
% hObject    handle to IND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IND as text
%        str2double(get(hObject,'String')) returns contents of IND as a double


% --- Executes during object creation, after setting all properties.
function IND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of E as text
%        str2double(get(hObject,'String')) returns contents of E as a double


% --- Executes during object creation, after setting all properties.
function E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DF.
function DF_Callback(hObject, eventdata, handles)
% hObject    handle to DF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DF contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DF


% --- Executes during object creation, after setting all properties.
function DF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M as text
%        str2double(get(hObject,'String')) returns contents of M as a double


% --- Executes during object creation, after setting all properties.
function M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in TrainBtn.
function TrainBtn_Callback(hObject, eventdata, handles)
% hObject    handle to TrainBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Number_of_neurons=eval(get(handles.SN, 'String'));
num_Epoch=str2double(get(handles.E, 'String'));
mse_thres=str2double(get(handles.M, 'String'));
filename=get(handles.IND, 'String')
train_info.training_percentage=str2double(get(handles.PT, 'String'));
switch get(handles.DF,'Value')
    case 1
        dataFormat='Row'
    case 2
        dataFormat='Column'
    otherwise
end
Ptrainning=str2double(get(handles.PT, 'String'))
backPropagation
save('bp');


% --- Executes on button press in TestBtn.
function TestBtn_Callback(hObject, eventdata, handles)
% hObject    handle to TestBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 load('bp') ;
 FeedForward
