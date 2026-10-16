function varargout = graftancotan(x)
tg = tan(x);
ctg = 1 ./ tan(x);

if nargout == 0
figure
    plot(x, tg)
    hold on
    plot(x, ctg)

    grid on
    xlabel('x')
    ylabel('y')
    title('Tangento ir kotangento grafikai')
    legend('tan(x)', 'cot(x)')

    hold off

elseif nargout == 1

    varargout{1} = tg;

elseif nargout == 2

    varargout{1} = tg;
    varargout{2} = ctg;

end

end
