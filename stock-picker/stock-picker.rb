def stock_picker (stock_prices)
  max_profit = 0
  buy_day = sell_day = 0

  stock_prices.each_with_index do |buy_price, buy_index|
    (buy_index + 1...stock_prices.length).each do |sell_index|
      sell_price = stock_prices[sell_index]
      profit = sell_price - buy_price

      if max_profit < profit
        max_profit = profit
        buy_day = buy_index
        sell_day = sell_index
      end
    end
  end
  p [buy_day, sell_day]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker([25, 18, 13, 20, 22, 17, 30, 28, 24])
stock_picker([10, 15, 12, 8, 20, 18, 22, 25, 28])
stock_picker([50, 45, 48, 55, 60, 58, 62, 59, 65])
stock_picker([30, 35, 40, 38, 45, 42, 39, 41, 37])
stock_picker([17, 20, 15, 12, 18, 22, 25, 27, 30])
stock_picker([22, 25, 28, 26, 24, 20, 18, 15, 12])
stock_picker([40, 38, 35, 32, 30, 28, 26, 24, 22])
stock_picker([50, 55, 52, 48, 45, 42, 40, 38, 36])
stock_picker([50, 55, 52, 48, 45, 42, 40, 38, 36])