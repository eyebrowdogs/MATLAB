    v=0;                        %inicia el loop counter
    ee=t;
    ie=100;
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
     
    while e<v           %loop de matriz de errores
     errs(e) = ((abs((groots(v)-groots(e+1))))/groots(v))*100; %calcula el errores de cada elemento del array vs el final
     e=e+1;
    end

    if (p==true)          %graficos de error y valor si p=1
        subplot(2,1,1);
        plot(errs,LineWidth=2,Color=[1 0 0])
        title('Porcentaje de error')
        xlabel('iteraciones')
        ylabel('% error')
        

        subplot(2,1,2);
        plot(groots,LineWidth=2)
        title('Estimado de solucion')
        xlabel('iteraciones')
        ylabel('valor')
        yline(groots(v),Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--") %linea de valor final
        
        


    else
        disp(" ")
        disp(" ")
        disp("Resultados")
        disp(" ")
        disp("Raiz: ")    %resultado final si p =0
        disp(groots(v))
        disp("Iteraciones:")
        disp(v)
    end

    
   raiz=groots(v);  %pasa valor de funcion

end