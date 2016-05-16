def shuffle array
# shuffle by selecting random index
return array if array.length <= 1

array2 = []
array2 << array[rand(array.length) - 1]
toshuff = array - array2

array2 = array2 + shuffle(toshuff)

end
