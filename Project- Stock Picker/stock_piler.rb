def stock_picker(stock_prices)
    buy = stock_prices[0]
    sell = 0
  
    stock_prices.each_with_index do |stock_price, _index|
      
      if buy > stock_price and stock_price - sell > 0
        buy = stock_price
  
      elsif stock_price - buy > sell
        sell = stock_price
      end
      
    end
    
    return [stock_prices.find_index(buy), stock_prices.find_index(sell)]
  end
  
  print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
  