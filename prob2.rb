require 'httparty'


response = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')

response.sort_by! { |crypto| -crypto['market_cap'] }

puts "The top 5 cryptocurrencies:"

response.first(5).each_with_index do |crypto|
  puts "Name: #{crypto['name']}
        Current_ Price: $#{crypto['current_price']}
        Market_Cap: $#{crypto['market_cap']}"
end
