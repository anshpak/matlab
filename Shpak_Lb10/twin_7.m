function res = twin_7(choice)
switch(choice)
    case 1
    clf
    axis([-1 1 -1 1])
    title('Enter 2 POINTS')
    hold on
    
    A = ginput(1);
    plot(A(1), A(2), '.r', 'MarkerSize', 25)
    text(A(1), A(2) + .1, 'A', 'Color', 'r', 'FontWeight', 'bold');
    
    B = ginput(1);
    plot(B(1), B(2), '.b', 'MarkerSize', 25)
    text(B(1), B(2) + .1, 'B', 'Color', 'b', 'FontWeight', 'bold');
    
    plot([A(1), B(1)], [A(2), B(2)], 'g')
    t=0:0.01:1;
    S=(1-t)*A(1)+t*B(1); % Xi
    S(2,:)=(1-t)*A(2)+t*B(2); % Yi
    for n=1:size(S,2)
        h=plot(S(1,n),S(2,n),'.g','MarkerSize',20);
        axis([-1 1 -1 1])
        drawnow
        pause(.03)
        if(n~=1)||(n~=size(S,2))
            set(h,'Visible','Off')
            clear h
        end
    end
    case 2
        twin_5(0.01)
    case 3
        twin_6(0.01)
    otherwise
        disp('Error')
end
end

