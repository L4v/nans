function stocks = stocksShare(years, totalStocks)
%stonks

sumYears = sum(years);
stockPerYear = totalStocks / sumYears;

stocks = ceil(years .* stockPerYear);
end