function varargout = exp1(varargin)
% EXP1 MATLAB code for exp1.fig
%      EXP1, by itself, creates a new EXP1 or raises the existing
%      singleton*.
%
%      H = EXP1 returns the handle to a new EXP1 or the handle to
%      the existing singleton*.
%
%      EXP1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXP1.M with the given input arguments.
%
%      EXP1('Property','Value',...) creates a new EXP1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before exp1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to exp1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exp1

% Last Modified by GUIDE v2.5 13-Mar-2017 17:13:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exp1_OpeningFcn, ...
                   'gui_OutputFcn',  @exp1_OutputFcn, ...
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


% --- Executes just before exp1 is made visible.
function exp1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to exp1 (see VARARGIN)

% Choose default command line output for exp1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exp1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exp1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function menum_Callback(hObject, eventdata, handles)
% hObject    handle to menum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of menum as text
%        str2double(get(hObject,'String')) returns contents of menum as a double


% --- Executes during object creation, after setting all properties.
function menum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function soenum_Callback(hObject, eventdata, handles)
% hObject    handle to soenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soenum as text
%        str2double(get(hObject,'String')) returns contents of soenum as a double


% --- Executes during object creation, after setting all properties.
function soenum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function senum_Callback(hObject, eventdata, handles)
% hObject    handle to senum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of senum as text
%        str2double(get(hObject,'String')) returns contents of senum as a double


% --- Executes during object creation, after setting all properties.
function senum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function moenum_Callback(hObject, eventdata, handles)
% hObject    handle to moenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moenum as text
%        str2double(get(hObject,'String')) returns contents of moenum as a double


% --- Executes during object creation, after setting all properties.
function moenum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in er.
function er_Callback(hObject, eventdata, handles)
% hObject    handle to er (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2double(get(handles.menum, 'String'));
den = str2double(get(handles.meden, 'String'));
M = num/den;
num = str2double(get(handles.senum, 'String'));
den = str2double(get(handles.seden, 'String'));
S = num/den;
im = evalin('base', 'im');
im = edgeresponse(im, M, S);
imshow(im, 'parent', handles.filtered);
assignin('base', 'im', im);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over er.
function er_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to er (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in oer.
function oer_Callback(hObject, eventdata, handles)
% hObject    handle to oer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2double(get(handles.moenum, 'String'));
den = str2double(get(handles.moeden, 'String'));
M = num/den;
num = str2double(get(handles.soenum, 'String'));
den = str2double(get(handles.soeden, 'String'));
S = num/den;
im = evalin('base', 'im');
im = oldedgeresponse(im, M, S);
imshow(im, 'parent', handles.filtered);
assignin('base', 'im', im);



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
assignin('base', 'im', evalin('base', 'imoriginal'));


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over oer.
function oer_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to oer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over reset.
function reset_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function meden_Callback(hObject, eventdata, handles)
% hObject    handle to meden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meden as text
%        str2double(get(hObject,'String')) returns contents of meden as a double


% --- Executes during object creation, after setting all properties.
function meden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function seden_Callback(hObject, eventdata, handles)
% hObject    handle to seden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of seden as text
%        str2double(get(hObject,'String')) returns contents of seden as a double


% --- Executes during object creation, after setting all properties.
function seden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to seden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function soeden_Callback(hObject, eventdata, handles)
% hObject    handle to soeden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soeden as text
%        str2double(get(hObject,'String')) returns contents of soeden as a double


% --- Executes during object creation, after setting all properties.
function soeden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soeden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function moeden_Callback(hObject, eventdata, handles)
% hObject    handle to moeden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moeden as text
%        str2double(get(hObject,'String')) returns contents of moeden as a double


% --- Executes during object creation, after setting all properties.
function moeden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moeden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[path, name] = uigetfile('*');
imoriginal = imread(strcat(name, path));
imoriginal = im2double(rgb2gray(imoriginal));
imshow(imoriginal, 'parent', handles.original);
imoriginal = imcomplement(imoriginal);
assignin('base', 'imoriginal', imoriginal);
assignin('base', 'im', imoriginal);
