function d = diamater(points)

    function dst = get_dst(x, y)
        dst = sqrt((x(1) - y(1))^2 + (x(2) - y(2))^2);
    end

[rows, ~] = size(points);
d = 0;
for row1 = 1:rows
    tren_p1 = points(row1, :);     
    for row2 = 1:rows
      tren_p2 = points(row2, :);
      tmp = get_dst(tren_p1, tren_p2);
      if tmp > d
         d = tmp; 
      end
    end
end

% crtanje tacaka
scatter(points(:, 1), points(:, 2));

end