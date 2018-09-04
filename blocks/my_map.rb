class Array
  def my_map
    index = 0
    return_arr = [] # define the new array that we want to return
    until index == self.length
      return_arr << yield(self[index]) if block_given? # for each element in the given array push the result of the block into the new array
      index += 1
    end
    return_arr # return the new array
  end
end

puts [1, 2, 3, 4, 5].my_map { |el| el + 1 }
