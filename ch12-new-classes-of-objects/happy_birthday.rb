# your code here

puts "What year were you born in? Please enter in YYYY format"
year = gets.chomp.to_i

puts "And what month? Please enter in MM format"
month = gets.chomp.to_i

puts "Finally, what day? Please enter in DD format"
day = gets.chomp.to_i

year_sec = 60*60*24*365

person_time = Time.gm(year, month, day)

age = Time.new - person_time
birthdays = (age/year_sec).to_i

puts "You have had #{birthdays} birthdays!"
puts "SPANK\n" * birthdays


