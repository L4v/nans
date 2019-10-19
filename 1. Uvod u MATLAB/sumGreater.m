function s = sumGreater(A)

avg = mean(mean(A));
s = sum(A(A > avg));

end