class Array
  def my_each
    count = 0
    until count == self.length
      yield(self[count]) if block_given?
      count += 1
    end
    self
  end
end

class Integer
  def my_times
    [*0...self].my_each do |el|
      yield(el) if block_given?
    end
    self
  end
end

5.my_times { |n| puts "cool #{n}" }
