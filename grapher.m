%graoher function for every method, takes in function, error vector and value vector
function grapher(func,errV,rootV,v,fl)

subplot(3,1,1);
        plot(errV,LineWidth=2,Color=[1 0 0])
        title('Porcentaje de error',FontSize=20)
        xlabel('Iteraciones')
        ylabel('% error')
        

subplot(3,1,2);
        plot(rootV,LineWidth=2)
        xlim([(v-2) v])
        title('Estimado de solucion',FontSize=20)
        xlabel('Iteraciones')
        ylabel('Valor de x')
        yline(rootV(v),Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")

        
subplot(3,1,3)
        %limitx = max(rootV);
        tex = latex(sym(fl));
        fplot(func,LineWidth=3)
        %text(rootV(v),func(rootV(v)),['$f = ' tex '$'], 'Interpreter','latex', 'FontSize',16);
        %xlim([rootV(v)-limitx rootV(v)+limitx])
        sum = abs(max(rootV))+abs(min(rootV));
        xlim([-abs(sum) abs(sum)])
        title(['\boldmath$' tex '$'],Interpreter="latex",FontSize=28,FontWeight="bold")
        xlabel('x')
        ylabel('f(x)')
        yline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        xline(0,Color=[0.9290 0.6940 0.1250],LineWidth=1.5,LineStyle="--")
        hold on
        plot(rootV(v),func(rootV(v)),'k.', MarkerSize=20)
        plot(flip(rootV),0:v,LineWidth=2,Color=[1 0 0])
        hold off;
        pos = get(gcf, 'Position');
        set(gcf, 'Position',pos+[0 -200 0 200])

end