def bubblesort(arr)
    n=arr.length
    for i in 0...(n-1)
        for j in 0...(n-i-1)
            if arr[j]> arr[j+1]
                temp=arr[j]
                arr[j]=arr[j+1]
                arr[j+1]=temp
            end
            
        end
        
    end
    return arr
end

puts "Enter the number of elements in the array"
n=gets.chomp.to_i
arr=Array.new()
puts "Enter the array elements"
puts ""
for i in 0...n
    puts "Enter the number"
    a=gets.chomp.to_i
    arr.push(a)
end
puts ""
puts bubblesort(arr)