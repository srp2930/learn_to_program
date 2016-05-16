def dictionary_sort some_array

return some_array if some_array.length <= 1

arrayn = []
arraydown = some_array.map {|x| x.downcase }
arrayn << some_array[arraydown.index(arraydown.min)]
unsorted = some_array - arrayn

arrayn = arrayn + dictionary_sort(unsorted)

end


