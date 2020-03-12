def stock_picker(prices)
  max = [0, 0, 0]
  prices.each_with_index do |x, x_ind|
    prices.each_with_index do |y, y_ind|
      if x_ind < y_ind && y - x > max[0]
        max = [y - x, x_ind, y_ind]
      end
    end
  end
  max[1..2]
end

p stock_picker([17,3,6,9,15,8,6,1,10])