

# b == base
# n == exponent

# b^n == answer
# 2^3 == 8

# def exponent(b,n)
#     return b if n == 1 
    
#     b * exponent(b,n-1)
# end

# p exponent(2,3)
# p exponent(2,2)
# p exponent(4,2)

# exponenet_2(2,3) = 8
# 2 * (exponent2(2,(3-1)/ 2) ** 2 )
# 2 * exponent(2,2)
# 2 * exponent_2(2,2/1) ** 2
# 2 * exponent_2(2,4)

# def exponent_2(b,n)
#     return b if n == 1

#     if n.even? 
#         exponent_2(b,n /2) ** 2
#     else
#         b * exponent_2(b, (n-1) / 2)
# # end

# def exponent_2(b, n)
# return b if n == 1
#     if n.even? 
#         even_exp = exponent_2(b, n/2)
#         even_exp * even_exp
#     else
#         odd_exp = exponent_2(b, (n-1)/2)
#         odd_exp * odd_exp * b
#     end 

# end

# p exponent_2(2,3)
# p exponent_2(2,2)
# p exponent_2(4,2)
# p exponent_2(8,5)

# Make a new empty array
# Copy the elements from the input array
# Base case is when there is no subarrays
# we can use is_a? to check if there is any subarrays for a base case

# def dup(arr)
#     if arr[0].all? {|ele| !ele.is_a?(Array)}  #&& arr[0].length > 0
#     return arr[0] 
# end

#     new_arr = []
#     return ew_arr <<  dup(arr[1..-1]) + arr[1] 
# end


    
    

# def dup(arr)
#     return arr if !arr.is_a?(Array)  #&& arr[0].length > 0

# new_arr = []

# arr.each do |ele|
#     new_arr << dup(ele)
# end
# return new_arr
# end

# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# b= [1, [2], [3, [4]]]


# c = dup(b)
# p b.object_id
# p c.object_id

# def fibonacci(n)
#     return [0] if n == 1 
#     return [0,1] if n == 2
#     past =  fibonacci(n-1)
#     past  << past[-1] + past[-2]
# end
require "byebug"
# def binary(arr, target)
#     # debugger
#     middle = arr.length / 2
#     if arr.length.even? && arr.length != 2
#         middle -= 1
#     end
#    return nil if arr.length == 1 && arr[middle] != target
#     return middle if arr[middle] == target

#     if target > arr[middle] &&  binary(arr[middle..-1], target) != nil
#         binary(arr[middle..-1], target) + middle
#     elsif target < arr[middle] && binary(arr[0...middle],target) != nil
#         binary(arr[0...middle],target) 
#     end

# end

# def merge_sort(arr)
#     return nil if arr.length == 0
#     return arr[0] if arr.length == 1
#     middle = arr.length/2
#     left = arr[0...middle]
#     right = arr[middle..-1]
#     if merge_sort(left)  > merge_sort(right) #.length == 1 && merge_sort(right).length ==1
#        # break


#     new_arr << merge_sort(right) + merge_sort(left)
#     else 
#          new_arr << merge_sort(left) + merge_sort( right)
#     end

# end
# a = [3,8,12,56,8]
# p merge_sort(a)

# def merge(ele1, ele2)
#     new_arr = []
#     if ele1 > ele2
#         new_arr.push(ele2, ele1)
#     else
#         new_arr.push(ele1,ele2)
#     end
# end

def merge(left,right)
    new_arr  = []
    left.each_with_index do |ele1,i1|
        right.each_with_index do |ele2,i2|
            if i1 == i2
                if ele1 < ele2
                    new_arr << ele1
                else
                    new_arr << ele2
                end
            elsif i1 > right.length 
                new_arr << ele1
            elsif i2 > left.length
                new_arr << ele2
            end
        end
    end
    new_arr     
end

a = [3,27,38,43]
b = [9,10,82]
p merge(a,b)