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

# p my_min2(list)  # =>  -5

def subsum(list)
    max = list[0]
    (0...list.length).each do |i|
        # if max < list[0..i].sum
        #     max = list[0..i].sum
        # end
        (i...list.length).each do |j|
            if max < list[i..j].sum
                max = list[i..j].sum
            end
        end
    end
    max
end

list = [-2, -1, -6, -7, -6, -7]
p subsum(list) # => 8 (from [7, -6, 7])