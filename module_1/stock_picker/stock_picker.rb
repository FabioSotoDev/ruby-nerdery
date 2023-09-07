def stock_picker(list)
    buy_index = 0
    sell_index = 0
    profit = 0

    current_buy_index = 0
    current_sell_index = 1

    for i in 1..list.length-1 do
        if list[current_buy_index] > list[current_sell_index]
            current_buy_index, current_sell_index = current_sell_index, current_sell_index + 1
            next
        end

        current_profit = list[current_sell_index] - list[current_buy_index]

        if current_profit > profit
            buy_index = current_buy_index
            sell_index = current_sell_index
            current_sell_index = current_sell_index + 1
            profit = current_profit
        end
    end

    p [buy_index, sell_index]

    return [buy_index, sell_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])