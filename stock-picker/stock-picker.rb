def stock_picker(prices)
  max_profit = 0
  best_days = nil

  prices.each_index do |i|
    for j in (i+1...prices.length)
      current_profit = prices[j] - prices[i]
      if current_profit > max_profit
        max_profit = current_profit
        best_days = [i, j]
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])