class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.to_proc
    Proc.new { |person| person.name }
  end
end

lewis = Person.new("Lewis")
lydia = Person.new("Lydia")

puts [lewis, lydia].map(&Person) # by calling &Person on the class name ruby attempts to make sense of this
# by 'looking' for the #to_proc methon on the class - an implicit call.
