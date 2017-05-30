clc;
clear all;
g=input('Ingrese la ruta: ');
%f=imread('C:\Users\s115e3\Documents\MATLAB\Homero.jpg'); %Aquí leemos la Imagen
f=imread(g);
f_R= f(:, :, 1); %vector o plano de los rojos
f_G= f(:, :, 2); %vector o plano de los verdes
f_B= f(:, :, 3); %vector o plano de los azules
filas = size (f,1); %Longitud en filas
columnas = size (f,2); %Longitud en filas

% --------------------------------------------
% Derivadas para la gama rojo
% --------------------------------------------

% Recorrido filas - columnas
for i=1:filas-1
    for j=1:columnas-1
        matriz1_R(i,j)=f_R(i,j+1)-f_R(i,j);
        if matriz1_R(i,j)>25
            matriz1_R(i,j)=255;
        else
            matriz1_R(i,j)=0;
        end
    end
end

% Recorrido columnas - filas
for j=1:columnas-1
    for i=1:filas-1
         matriz2_R(i,j)=f_R(i,j+1)-f_R(i,j);
        if matriz2_R(i,j)>25
            matriz2_R(i,j)=255;
        else
            matriz2_R(i,j)=0;
        end
    end
end

% Recorrido de abajo a arriba
for i=filas-1:-1:1
    for j=columnas-1:-1:1
         matriz3_R(i,j)=f_R(i,j+1)-f_R(i,j);
        if matriz3_R(i,j)>25
            matriz3_R(i,j)=255;
        else
            matriz3_R(i,j)=0;
        end
    end
end

% Recorrido de arriba a abajo
for j=columnas-1:-1:1
    for i=filas-1:-1:1
         matriz3_R(i,j)=f_R(i,j+1)-f_R(i,j);
        if matriz3_R(i,j)>25
            matriz3_R(i,j)=255;
        else
            matriz3_R(i,j)=0;
        end
    end
end


% Visualizar en gama de Rojos
derivadasR= matriz1_R.* matriz2_R.* matriz3_R;
imshow(derivadasR)

