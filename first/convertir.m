%Convertir coordenada polar a cartesiana
function [x,y]=convertir(r,t)
x=r*cosd(t);
y=r*sind(t);
