puts "Enter the number of days"
n=gets.chomp.to_i

stock_price=Array.new

for i in 0...n
    puts "Enter the price of the stock"
    price=gets.chomp.to_i
    stock_price.push(price)
end

buy_day=-1
sell_day=-1
max_profit=-1000
for i in 0...n
    for j in (i+1)...n
        profit=stock_price[j]-stock_price[i]
        if profit>0
            if profit>max_profit
                max_profit=profit
                buy_day=i
                sell_day=j
            end
        end
    end
end

if max_profit==-1000
    puts "There are no set of days at which stock could by bought and sold for profit"
else
    puts buy_day
    puts sell_day
end

