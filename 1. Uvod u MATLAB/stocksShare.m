function stocks = stocksShare(years, totalStocks)

% stonks!
[r, c] = size(years);
StockUnit = totalStocks / sum(years);
stocks = round(StockUnit * years);

end