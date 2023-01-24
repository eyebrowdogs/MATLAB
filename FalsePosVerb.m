function root=FalsePosVerb(F,x1,x2,t,i,p)

    syms x             %symbolic var xd for syms opp
    x = x1;            %passing val to simb var
    sf=sym(F);          %eval symb func
    diffi=diff(sf);     %differientiation of f
    deri=subs(diffi);   %evaluation of f' in x1
    fpp=false;
    if deri<0       %if f' neg, x's are flipped
        l=x1;           %placeholders
        r=x2;

        x1=r;           %flipping
        x2=l;
        fpp=true;       %flipped state flag
    end


    fx=F;               %name change idkw
    r1=fx(x1);          %fuc evals
    r2=fx(x2);

    if  (r1>0 && r2>0) || (r1<0 && r2<0) %if no sign change, no intersection, no roots
        disp("Invalid guessess :(")
        root=("error");
        return
    end


 %root calc



        xm=x2-((r2*(x1-x2))/(r1-r2));        %mid value Fals position

        

        rm=fx(xm);          %mid val eval
        v=0;                %loop conter
        ee=t;
        ie=100;

        while v <= i  && ie >= ee         %loop vs iterations
    
        if rm>0             %crosses in x1 to xm
            x2=xm;          %leftmost is now xm

        else                % corsses in xm to x2
            x1=xm;          % right most is now xm 
        end %
        groots(v+1)=xm;     % first val in array
        errxm1=xm;





        xm=x2-((r2*(x1-x2))/(r1-r2));       % new middle val after crossing condition and assign Fasles position




        errxm2=xm;

        %act errero calc
        disp('err act')
        disp((((abs((errxm1-errxm2)))/errxm1)*100))  %muestra valor actual de error
        ie=((abs((errxm1-errxm2)))/errxm1)*100;      %calcula error de elemento actual vs pasado


        rm=fx(xm);          %eval
        yval(v+1)=rm;
        v=v+1;              %loop++
        groots(v+1)=xm;     %new val in array
        end           %while loop
    

%final val vs iteration error array
    e=1; %counter de loop error
     
    while e<v           %loop de matriz de errores
     errs(e) = ((abs((groots(v)-groots(e+1))))/groots(v))*100; %calcula el errores de cada elemento del array vs el final
     e=e+1;
    end


    if fpp==true %prints if diff at x1 is neg ... x's were flipped
        disp("Flipped x's")
    end

%p flag graphs
    if (p==true)          %graficos de error y valor si p=1
        
      grapher(F,errs,groots,v)

        
        


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