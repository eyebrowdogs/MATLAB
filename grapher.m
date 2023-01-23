%graoher function for every method, takes in function, error vector and value vector
function grapher(func,errV,rootV)

subplot(2,1,1);
        plot(errV,LineWidth=2,Color=[1 0 0])
        title('Porcentaje de error')
        xlabel('iteraciones')
        ylabel('% error')
        

        subplot(2,1,2);
        plot(rootV,LineWidth=2)
        title('Estimado de solucion')
        xlabel('iteraciones')
        ylabel('valor')
        yline(groots(v),Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--") 


end