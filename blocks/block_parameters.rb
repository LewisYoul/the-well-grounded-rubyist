def block_params
  x = 100
  [1, 2, 3].each do |x|
    puts "I am the original number in the array - #{x}"
    x += 2
    puts "I am the original number in the array plus 2 - #{x}"
  end
  puts "I am the original definition of x - #{x}"
end

block_params
