module TestModule
  def say_hi
    puts 'Hi everybody!'
  end
end

class TestClass
  include TestModule
end

c = TestClass.new
c.say_hi