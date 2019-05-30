function varargout = MenuLegacy(varargin)
% MENULEGACY MATLAB code for MenuLegacy.fig
%      MENULEGACY, by itself, creates a new MENULEGACY or raises the existing
%      singleton*.
%
%      H = MENULEGACY returns the handle to a new MENULEGACY or the handle to
%      the existing singleton*.
%
%      MENULEGACY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENULEGACY.M with the given input arguments.
%
%      MENULEGACY('Property','Value',...) creates a new MENULEGACY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuLegacy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuLegacy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuLegacy

% Last Modified by GUIDE v2.5 15-May-2019 17:15:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuLegacy_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuLegacy_OutputFcn, ...
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


% --- Executes just before MenuLegacy is made visible.
function MenuLegacy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuLegacy (see VARARGIN)

% Choose default command line output for MenuLegacy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MenuLegacy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuLegacy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in SOMBtn.
function SOMBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SOMBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SOMLegacy


% --- Executes on button press in BPbtn.
function BPbtn_Callback(hObject, eventdata, handles)
% hObject    handle to BPbtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
BackPorpagationLegacy


% --- Executes on button press in SVMBtn.
function SVMBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SVMBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SVMlegacy
