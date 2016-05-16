# your code here

#change to right directory
#find the files in the directory
#extract the files from the directory into a new file 
#save the file 
#write a program with it to create a playlist 

Dir.chdir 'C:/Users/srimingtonpounder/Projects/Music' 

music_names = 'C:/Users/srimingtonpounder/Music/iTunes/iTunes Media/*.mp3/'

puts 'What do you want to call your playlist?'
playlist_name = gets.chomp + ".m3u"

def shuffle(array)
new_order  = []
new_order << [rand(array.length) - 1]
toshuff = array - new_order

new_order = new_order + shuffle(toshuff)

end

shuffle music_names

File.open #{playlist_name}, 'w' do |f|
music_names.each do |name|
f.write name + "/n"
end
end

puts
puts "Playlist is complete!"
