class Array
  def my_each
    count = 0
    until count == self.length
      yield(self[count]) if block_given? # if block_given? guards against throwing an error if no block is passed
      count += 1
    end
    self
  end
end

[1, 2, 3, 4, 5].my_each # wont print anything because no block is passed
[1, 2, 3, 4, 5].my_each { |element| puts element*2 } # will puts 2, 4, 6, 8, 10 as the block is called for each element in the array
