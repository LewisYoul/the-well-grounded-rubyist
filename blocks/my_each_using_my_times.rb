class Integer
  def my_times
    count = 0
    until count == self
      yield(count) if block_given?
      count += 1
    end
    self
  end
end

class Array
  def my_each
    self.length.my_times do |index| # get the length of the provided array
      yield(self[index]) if block_given? # for each 'index' yield to the block with the correct array element
    end
    self
  end
end

[1, 2, 3, 4, 5].my_each { |el| puts el * 2 } # this will print 2, 4, 6, 8, 10 to the console
