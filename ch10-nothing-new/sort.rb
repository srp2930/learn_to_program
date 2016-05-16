def sort some_array

return some_array if some_array.length <= 1

arrayn = []
arrayn << some_array.min
unsorted = some_array - arrayn

arrayn = arrayn + sort(unsorted)

end
