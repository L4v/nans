function x = solveUpperTriangular(A, b)
	rows = size(A, 1);
	x = zeros(rows, 1);
	for it1 = rows:-1:1
        x(it1) = (b(it1) - A(it1,it1 + 1:end)*x(it1 + 1:end))/A(it1,it1);
	end
end