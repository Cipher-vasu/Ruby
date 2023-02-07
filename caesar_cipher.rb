puts "Enter the string to be encoded"
str=gets.chomp

puts "Enter the shift factor"
len = str.length
shift=gets.chomp.to_i
shift = shift%26
new_str=""
#puts str
#puts len

for i in 0...len
    #puts str[i]
    v=str[i].ord
    if v>=65 && v<=90
        v+=shift
        if v>97
            v=(v-97)+64
        end
    else
        v+=shift
        if v>122
            v=(v-122)+96
        end
    end
    new_str+=v.chr()
end
puts "The encoded string is:-"
puts new_str