%Funcion que realiza la reduccion por Gauss Jordan
function y=F_Gauss_Jordan(Matriz_x)
  for i=1:length(Matriz_x(:,1)) %%para i desde la primera fila  hasta el número
                                    %de filas existentes 
    if Matriz_x(i,i)~=1 %%si el elemento i,i de la diagonal es diferente de 1 
        Matriz_x(i,:)=double(Matriz_x(i,:))./ double(Matriz_x(i,i));  %entonces se convierte a 1  
                                             %dividiendo toda la fila 
                                            %por dicho elemento
    end


      for n=1:length(Matriz_x(:,1)) %para n desde la primera fila hasta el
                                %número de filas existentes
          if n~=i % si n en la columna i no está en la diagonal es decir si i 
                   %no es igual a n
              Matriz_x(n,:)=double(Matriz_x(n,:))-(double(Matriz_x(n,i)).* double(Matriz_x(i,:))); %entonces se 
                                                            %convierte a 0 
          end
      end
  end
 y=Matriz_x;