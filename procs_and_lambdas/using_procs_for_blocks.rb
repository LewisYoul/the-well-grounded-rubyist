def capture_block(&block)
  block.call
end

p = Proc.new { puts "This proc argument will serve as a code block" }

capture_block(&p)

# providing the saved proc as an argument to a method that facilitates &block conversion
# will allow the proc to be run in the same manner as a code block
# in this case the & is a wrapper for the .to_proc method
