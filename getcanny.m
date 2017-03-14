function image = getcanny(handles, im)
    high = str2double(get(handles.highth, 'string'));
    low = str2double(get(handles.lowth, 'string'));
    tlow = percentile(im, low);
    thigh = percentile(im, high);
    [image, ~] = cannys(im, tlow, thigh);
end