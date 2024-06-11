# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

def stock_picker(prices)
  best_price = 0
  day_1 = 0
  day_2 = 0
  prices[0..-2].each_with_index do |price1, index1|
    prices.each_with_index do |price2, index2|
      if index2 > index1
        curr_price = price2 - price1
        if curr_price > best_price
          day_1 = index1
          day_2 = index2
          best_price = curr_price
        end
      end
    end
  end
  result = [day_1, day_2]
  result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])