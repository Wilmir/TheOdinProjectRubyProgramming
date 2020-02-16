def stock_picker(prices)
    buy = prices[0]
    sell = prices[1..-1].max
    gain = sell - buy

    day = 1

    while (day < (prices.length - 1))
        new_buy = prices[day]
        new_sell = prices[(day+1)..-1].max
        new_gain = new_sell - new_buy
        
        if(new_gain > gain)
            buy = new_buy
            sell = new_sell
            gain = new_gain
        end

        day += 1
    end

    return [prices.find_index(buy), prices.find_index(sell)]

end

p  stock_picker([17,3,6,9,15,8,6,1,10])