
birthdays = {} #hash key to look up birthdays and dates
birtharray = []

File.read('newbirth.txt').each_line do |line|
birtharray << line.chomp.split(", ", 2)
end

birthdays = Hash[birtharray.map {|key, value| [key, value]} ]

puts "Whose birthday would you like to know?"

answer = gets.chomp
date = birthdays[answer]

if birthdays[answer] == nil
  puts "Error! Not in list of birthdays!"
else
  puts "#{answer} was born on #{date}"
end

time = Time.new
months = {'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 'May' => 5, 'Jun' => 6, 'Jul' => 7, 'Aug' => 8, 'Sep' => '9', 'Oct' => '10', 'Nov' => 11, 'Dec' => 12}

if months[date[0..2]] > 5
  puts "Next birthday will be #{date[0..5]} 2016"
elsif months[date[0..2]] < 5
  puts "Next birthday will be #{date[0..5]} 2017"
else
    if date[4..5] > time.to_s[8..9]
      puts "Next birthday will be #{date[0..5]} 2016"
    else
      puts "Next birthday will be #{date[0..5]} 2017"
    end
  end
