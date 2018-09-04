pr_new = Proc.new { puts "Inside the block of a Proc created with #new" }

pr_new.call # invoking call on the saved proc will execute it's block

pr_method = proc { puts "Inside the block of a Proc created with the proc method" }

pr_method.call
