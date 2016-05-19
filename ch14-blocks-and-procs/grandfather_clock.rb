def grandfather_clock &block
#calculate time
#do block for every hour that has passed
#end program
num = Time.new.hour

if num <= 12
	Time.new.hour.times {block.call}
	else
	(num - 12).times {block.call}
	end
end

grandfather_clock {puts 'DONG!'}
