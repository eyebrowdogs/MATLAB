function raiz=FixedPverb(F,x1,t,i,p)
 % F en funcion x=g(x)
 % x1 primer valor
 % t tolerancia ahora si implementada :)))))
 % i iteraciones
 % p 0=Raiz en texto, 1=plots de error y valor

    fx=F;                       %llama funcion
    v=0;                        %inicia el loop counter
    %%groots = zeros(1,i);      %array tamano 
    ee=t;
    ie=100;
    %x=0:i; %array de eje x/ iteraciones
    while v < i  && ie >= ee        %Condicion menor que iteraciones o mayor que tolerancia

        x2=fx(x1);                  %evalua en primer punto
        groots(v+1)=x2;             %array de iteraciones de x
        
        v=v+1                       %counter sum
        disp('Error act: ')
        disp((((abs((x1-x2)))/x1)*100))  %muestra valor actual de error
        ie=((abs((x1-x2)))/x1)*100;      %calcula error de elemento actual vs pasado
        x1=x2 ;                     %valor actual


    end

    e=1; %counter de loop error
     %%errs = zeros(1,i);
    while e<v           %loop de matriz de errores
     errs(e) = ((abs((groots(v)-groots(e+1))))/groots(v))*100; %calcula el errores de cada elemento del array vs el final
     e=e+1;
    end

    if (p==true)          %graficos de error y valor si p=1
      
        grapher(F,errs,groots,v)


    %text version of results

    else
       verboser(v,groots)
    end

    
   raiz=groots(v);  %pasa valor de funcion

end



%Profe le eche muchas ganas a este codigo, punto extra o que show. Porfas
%andele :(

