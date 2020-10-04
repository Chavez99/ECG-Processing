clear all %#ok<CLALL>
clc
close all
uigetfile('16265.dat', 'Openfile.dat');
if isequal('16265.dat', 0) || isequal('C:\Users\turok\Documents\TEC\Bioelectronics\Chavez Murga Arturo Alejandro 17491021\Matlab Signals', 0)   
    disp('File input canceled.');  
   ECG_Data = [];  
else
fid=fopen('16265.dat','r');
end
time=10;
f=(fread(fid,2*360*time,'ubit12'))*(-1);
Orig_Sig=f(1:2:length(1/f));
plot(Orig_Sig)
fclose(fid);