def block_scope
  x = 100
  1.times do
    puts "block scope - #{x}" # will output 100 - blocks have direct access to variables that have already been defined
  end
end

def block_scope_2
  x = 100
  1.times do
    x = 200
  end
  puts "block scope 2 - #{x}" # will output 200 - as the block has access to the pre-defined variable it can be reassigned
end

block_scope_2
