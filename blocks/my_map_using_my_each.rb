class Array
  def my_each
    count = 0
    until count == self.length
      yield(self[count]) if block_given?
      count += 1
    end
    self
  end

  def my_map
    return_arr = [] # declare our return array
    self.my_each { |el| return_arr << yield(el) if block_given? } # use my_each to iterate over the array and then for each element yield to the provided block and push the result in to the return array
    return_arr # return the new array
  end
end

puts [1, 2, 3, 4, 5].my_map { |el| el*2 }
