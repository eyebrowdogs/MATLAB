function root=NewtonSys_snippetloop(F1,F2,x1,y1,i)

        syms x y;
        vctr=[x,y];
        sf1=sym(F1);
        sf2=sym(F2);
        fvctr=[sf1,sf2];
        J=jacobian(fvctr,[x,y]);
        %Jin=1/J;
        xn=sym(x1);
        yn=sym(y1);
        vnvctr=[xn,yn];

        
 %root calc
        
        v=0;                %loop conter

        while v <= i        %loop vs iterations
        
        sjin=subs(J,[x,y],vnvctr);
        sfun=subs(fvctr,[x,y],vnvctr);

        nvctr=vnvctr-(sjin\sfun);
        vnvctr=nvctr;
        

        end           %while loop


end