close all
clear
clc
loc = csvread ('/home/florian/Ablage/test2.cvs'); 
loc = sortrows (loc,1);

%Plotte Locations
figure
n = 20;
plot(loc(:,3),loc(:,2),'sb-');
hold on
plot(median_filter(loc(:,3),n),median_filter(loc(:,2),n),'xr-');