class Integer
 def to_fac
	if self < 0
	return "Factorial for number less than zero is not possible"
	end

	if self <= 1
	1
	else
	self * (self-1).to_fac
	end
    end

end

puts 3.to_fac
puts 30.to_fac


