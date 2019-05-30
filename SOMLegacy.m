function varargout = SOMLegacy(varargin)
% SOMLEGACY MATLAB code for SOMLegacy.fig
%      SOMLEGACY, by itself, creates a new SOMLEGACY or raises the existing
%      singleton*.
%
%      H = SOMLEGACY returns the handle to a new SOMLEGACY or the handle to
%      the existing singleton*.
%
%      SOMLEGACY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOMLEGACY.M with the given input arguments.
%
%      SOMLEGACY('Property','Value',...) creates a new SOMLEGACY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SOMLegacy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SOMLegacy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SOMLegacy

% Last Modified by GUIDE v2.5 30-May-2019 16:54:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SOMLegacy_OpeningFcn, ...
                   'gui_OutputFcn',  @SOMLegacy_OutputFcn, ...
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


% --- Executes just before SOMLegacy is made visible.
function SOMLegacy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SOMLegacy (see VARARGIN)

% Choose default command line output for SOMLegacy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SOMLegacy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SOMLegacy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ND_Callback(hObject, eventdata, handles)
% hObject    handle to ND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ND as text
%        str2double(get(hObject,'String')) returns contents of ND as a double


% --- Executes during object creation, after setting all properties.
function ND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NV_Callback(hObject, eventdata, handles)
% hObject    handle to NV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NV as text
%        str2double(get(hObject,'String')) returns contents of NV as a double


% --- Executes during object creation, after setting all properties.
function NV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LR_Callback(hObject, eventdata, handles)
% hObject    handle to LR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LR as text
%        str2double(get(hObject,'String')) returns contents of LR as a double


% --- Executes during object creation, after setting all properties.
function LR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S_Callback(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S as text
%        str2double(get(hObject,'String')) returns contents of S as a double


% --- Executes during object creation, after setting all properties.
function S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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



function NN_Callback(hObject, eventdata, handles)
% hObject    handle to NN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NN as text
%        str2double(get(hObject,'String')) returns contents of NN as a double


% --- Executes during object creation, after setting all properties.
function NN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NE_Callback(hObject, eventdata, handles)
% hObject    handle to NE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NE as text
%        str2double(get(hObject,'String')) returns contents of NE as a double


% --- Executes during object creation, after setting all properties.
function NE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NE (see GCBO)
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


% --- Executes on button press in TrainBTN.
function TrainBTN_Callback(hObject, eventdata, handles)
% hObject    handle to TrainBTN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  Number_Of_Dimentions=str2double(get(handles.ND, 'String'))
  Number_of_neurons=str2double(get(handles.NN, 'String'))
  Number_of_epochs=str2double(get(handles.NE, 'String'))
  Number_of_Vectors=str2double(get(handles.NV, 'String'))
  learning_rate=str2double(get(handles.LR, 'String'))
  
  Sigma=str2double(get(handles.S, 'String'));
  
   switch get(handles.DF,'Value')   
    case 1
      data_Format='Row'
    case 2
      data_Format='Column'
    otherwise
 end  
  Inputdata=get(handles.IND, 'String')
  SelfOrganazingMap
