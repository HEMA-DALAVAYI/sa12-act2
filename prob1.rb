require 'httparty'

response = HTTParty.get('https://api.github.com/users/nikhilroxtomar/repos')
#puts response

highest_star_count = 0
most_starred_repository = []

most_starred_repository = response.max_by { |repo| repo['stargazers_count'] }


puts "The most star-ed repository in the account is:"
puts "Name:         #{most_starred_repository['name']}"
puts "Description:  #{most_starred_repository['description']}"
puts "Num of Stars: #{most_starred_repository['stargazers_count']}"
puts "URL:          #{most_starred_repository['html_url']}"
