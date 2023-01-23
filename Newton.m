function root=Newton(F,x1,i,t,p)


    %%newton

    syms x
    x = x1;
    sf=sym(F);     %anon to symbolic
    diffi=diff(sf);%derivative of f

    %%%newton

 %root calc
        
        v=0;                %loop conter
        ee=t;
        ie=100;

        while v <= i  && ie >= ee         %loop vs iterations
    
        fp=subs(diffi);   %evaluation of derivative of f
        evalx=subs(sf);   %eval of f
        xn=x-(evalx/fp);  %NR x+1 formula
        groots(v+1)=x;    %array
        
        %act errero calc
        disp('err act')

        eerxn = double(xn);
        eerx  = double(x);

        disp((((abs((eerx-eerxn)))/eerx)*100))  %muestra valor actual de error
        ie=((abs((eerx-eerxn)))/eerx)*100;      %calcula error de elemento actual vs pasado

        x=xn;
       
      
        v=v+1;              %loop
        groots(v+1)=x;
        end           %while loop
    

%final val vs iteration error array
    e=1; %counter de loop error
     
    while e<v           %loop de matriz de errores
     errs(e) = ((abs((groots(v)-groots(e+1))))/groots(v))*100; %calcula el errores de cada elemento del array vs el final
     e=e+1;
    end

%p flag graphs
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
   

end