function [A] = my_rref(A)

[x,y] = size(A);

row = 1;
column = 1;
count = zeros(1,0);
while row <= x && column <= y
    [j,i] = max(abs(A(row:x,column)));
    if j == 0
        column = column + 1;
        continue
    end
    i = i + row - 1;
    % Remember column index 
    count = [count column];
    % We swap row-th and i-th rows here.
    A([row i],column:y) = A([i row],column:y);
    % Divide pivot row by pivot element to get 1.
    A(row,column:y) = A(row,column:y)./A(row,column);
    for i = [1:row-1 row+1:x]
        A(i,column:y) = A(i,column:y) - A(i,column).*A(row,column:y);
    end
    row = row + 1;
    column = column + 1;
end

end

