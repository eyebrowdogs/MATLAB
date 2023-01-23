%graoher function for every method, takes in function, error vector and value vector
function grapher(func,errV,rootV,v)

subplot(3,1,1);
        plot(errV,LineWidth=2,Color=[1 0 0])
        title('Porcentaje de error')
        xlabel('iteraciones')
        ylabel('% error')
        

subplot(3,1,2);
        plot(rootV,LineWidth=2)
        title('Estimado de solucion')
        xlabel('iteraciones')
        ylabel('valor')
        yline(rootV(v),Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")

        
subplot(3,1,3)
        fplot(func,LineWidth=3)
        xlim([-4 4])
        ylim([-4 v])
        title('Grafico de funcion')
        xlabel('x')
        ylabel('y')
        yline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        xline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        hold on
        plot(rootV(v),func(rootV(v)),'r*')
        plot(rootV,0:v,LineWidth=2,Color=[1 0 0])
        hold off;

end