require 'httparty'

response = HTTParty.get('http://worldtimeapi.org/api/timezone/Europe/London')


current_time = Time.parse(response.parsed_response['datetime']).strftime('%Y-%m-%d %H:%M:%S')

puts "The current time in Europe/London is #{current_time}"
