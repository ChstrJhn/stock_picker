def stock_picker(daily_prices={})
  sort_by_price = daily_prices.sort_by {|key, value| value}
  if sort_by_price[0][0] == "Friday"
	puts "The lowest price is on #{sort_by_price[0][0]}, buy then and wait for next week's data."
  elsif sort_by_price[-1][0] == "Monday"
  	puts "The highest price is on a #{sort_by_price[-1][0]}, best to wait?"
  else
    puts "Buy on #{sort_by_price[0][0]} at RM#{sort_by_price[0][1]} and sell on #{sort_by_price[-1][0]} for RM#{sort_by_price[-1][1]}."
  end
end
stock_picker({"Monday" => 30, "Tuesday" => 18, "Wednesday" => 7, "Thursday" => 2, "Friday" => 9})