def old_roman_numeral num

rom = ""
numeral = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}

numeral.each do |key, value|
  rom << key*(num/value)
  num -= (num/value)*value
end

puts rom

end
