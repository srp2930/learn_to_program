def roman_numeral num
rom = ""
I = 1  
V = 5
X = 10 
L = 50
C = 100
D = 500
M = 1000

thou = num/M
rom << "M"*thou
num = num - (thou*1000)

fivH = num/D
rom << "D"*fivH
num = num - (fivH*500)

hun = num/C
rom << "C"*hun
num = num - (hun*100)

fif = num/L
rom << "L"*fif
num = num - (fif*50)

ten = num/X
rom << "X"*ten
num = num - (ten*10)

one = num/I
rom << "I"*one
num = num - (one*1)

puts rom
end
