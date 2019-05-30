function varargout = SVMlegacy(varargin)
% SVMLEGACY MATLAB code for SVMlegacy.fig
%      SVMLEGACY, by itself, creates a new SVMLEGACY or raises the existing
%      singleton*.
%
%      H = SVMLEGACY returns the handle to a new SVMLEGACY or the handle to
%      the existing singleton*.
%
%      SVMLEGACY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SVMLEGACY.M with the given input arguments.
%
%      SVMLEGACY('Property','Value',...) creates a new SVMLEGACY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SVMlegacy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SVMlegacy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SVMlegacy

% Last Modified by GUIDE v2.5 15-May-2019 18:30:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SVMlegacy_OpeningFcn, ...
                   'gui_OutputFcn',  @SVMlegacy_OutputFcn, ...
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


% --- Executes just before SVMlegacy is made visible.
function SVMlegacy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SVMlegacy (see VARARGIN)

% Choose default command line output for SVMlegacy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SVMlegacy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SVMlegacy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function C_v_Callback(hObject, eventdata, handles)
% hObject    handle to C_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C_v as text
%        str2double(get(hObject,'String')) returns contents of C_v as a double


% --- Executes during object creation, after setting all properties.
function C_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Sigma_v_Callback(hObject, eventdata, handles)
% hObject    handle to Sigma_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sigma_v as text
%        str2double(get(hObject,'String')) returns contents of Sigma_v as a double


% --- Executes during object creation, after setting all properties.
function Sigma_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sigma_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function THR_v_Callback(hObject, eventdata, handles)
% hObject    handle to THR_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of THR_v as text
%        str2double(get(hObject,'String')) returns contents of THR_v as a double


% --- Executes during object creation, after setting all properties.
function THR_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to THR_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function InputData_Callback(hObject, eventdata, handles)
% hObject    handle to InputData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InputData as text
%        str2double(get(hObject,'String')) returns contents of InputData as a double


% --- Executes during object creation, after setting all properties.
function InputData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ptrain_v_Callback(hObject, eventdata, handles)
% hObject    handle to Ptrain_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ptrain_v as text
%        str2double(get(hObject,'String')) returns contents of Ptrain_v as a double


% --- Executes during object creation, after setting all properties.
function Ptrain_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ptrain_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in TestBTN.
function TestBTN_Callback(hObject, eventdata, handles)
% hObject    handle to TestBTN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TrainBTN.
function TrainBTN_Callback(hObject, eventdata, handles)
% hObject    handle to TrainBTN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
