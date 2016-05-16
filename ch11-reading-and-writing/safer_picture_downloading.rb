# your code here

# not required here though - require 'yaml'
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
#this is where you move to, and where you will save the pictures to 

pic_names = Dir['F:/**/*.jpg']
#this array is inserted with the names of the files you are looking for, which are removed from the location and specified with a condition inside the [] brackets.

if pic_names = 0
error = true
puts "Error: There are no files in this directory!"
end

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts 
print "Downloading #{pic_names.length} files: "

pic_number = 1

def file.exist?(name)
return Dir[name] == nil? false : true
end

#if the file exists already, go to next iteration - but this will be in the new_name section not in the folder where you are retrieving the pictures from 
end

def exit
end

i = 1
pic_names.each do |name|

	print '.'

	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}.jpg}"
		else
		"#{batch_name}#{pic_number}.jpg"
		end
	
	if file.exist?(new_name) 
	i += 1 
	next
	else
	File.rename name, new_name
	end

	#This takes the file of 'name' and renames it 'new_name' (remember we are still inside the do loop here)

	pic_number = pic_number +1

	if i > 10
	exit
	puts "Error. These files already exist."
	end

end 
	
	if error
	puts "Warning! Error: Do you wish to continue? Press 'y' or 'n'."
	answer = gets.chomp
		if answer == 'n'
		exit
		end
	end

end

puts
puts 'Done!'


