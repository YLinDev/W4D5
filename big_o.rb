list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list) #O(n)
    min = list[0]
    list.each do |ele|
        if ele < min
            min = ele
        end
    end
    min
end

def my_min2(list) #O(n^2)
    list.each do |ele| 
        if list.all? { |num| ele <= num}
            return ele
        end
    end
end

p my_min2(list)  # =>  -5