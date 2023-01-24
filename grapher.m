%graoher function for every method, takes in function, error vector and value vector
function grapher(func,errV,rootV,v)

subplot(3,1,1);
        plot(errV,LineWidth=2,Color=[1 0 0])
        title('Porcentaje de error')
        xlabel('Iteraciones')
        ylabel('% error')
        

subplot(3,1,2);
        plot(rootV,LineWidth=2)
        xlim([2 v])
        title('Estimado de solucion')
        xlabel('Iteraciones')
        ylabel('Valor de x')
        yline(rootV(v),Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")

        
subplot(3,1,3)
        limitx = max(rootV);
        fplot(func,LineWidth=3)
        xlim([rootV(v)-limitx rootV(v)+limitx])
        ylim([-(rootV(v)/2) rootV(v)])
        title('Grafico de funcion')
        xlabel('x')
        ylabel('y')
        yline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        xline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        hold on
        plot(rootV(v),func(rootV(v)),'k.', MarkerSize=20)
        plot(rootV,0:v,LineWidth=2,Color=[1 0 0])
        hold off;

end