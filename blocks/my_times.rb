class Integer
  def my_times
    c = 0
    until c == self
      yield(c) if block_given? # using if block_given? prevents error if no block is provided
      c += 1
    end
    self
  end
end

5.my_times # this wont print anything as no block has been provided

5.my_times { |n| puts "I am iteration #{n}"} # this will print each iteration number
