class Integer
  def my_times
    count = 0
    until count == self
      yield(count) if block_given?
      count += 1
    end
  end
end

class Array
  def my_each
    count = 0
    until count == self.length
      yield(self[count])
      count += 1
    end
  end

  def my_map
    result = []
    count = 0
    until count == self.length
      result << yield(self[count]) if block_given?
      count += 1
    end
    result
  end
end

puts "MY TIMES"

5.my_times { |x| puts "This is iteration number #{x}" }

puts "MY EACH"

['Tim', 'Bevan', 'Lewis'].my_each { |name| puts "The name is #{name}" }

puts "MY TIMES"

reversed_names = ['Tim', 'Bevan', 'Lewis'].my_map { |name| name.reverse }
puts reversed_names