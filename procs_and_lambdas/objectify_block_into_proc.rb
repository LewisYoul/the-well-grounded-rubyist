def call_a_block(&block) # the & syntax and the block keyword states to the interpreter that we want to convert the provided block to a proc
  # there is an implicit call to Proc.new { block } which is then bound to the block variable. It can then be called.
  block.call
end

call_a_block do
  puts "I'm a block that was objectified into a proc and then called."
  puts "Blocks aren't objects, they are part of the syntax of the method call!"
end
