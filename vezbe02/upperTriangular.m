function [A b] = upperTriangular(A, b)
    rows = size(A, 1);
	for row = 2:rows
        for col = 1:row - 1
            m = A(row,col)/A(col,col);
            A(row,:) = A(row,:) - A(col,:)*m;
            b(row) = b(row) - b(col)*m;
        end
	end
end