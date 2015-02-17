class Sandwich
  attr_reader :name, :bread, :meat, :condiment  # => nil

  def initialize(name, bread, meat, condiment)
    @name = name                                # => "special"
    @bread = bread                              # => "whole wheat"
    @meat = meat                                # => "turkey"
    @condiment = condiment.to_s                 # => "mayonnaise"
  end                                           # => nil

  def to_s
    "I am eating a #{@name} sandwich with #{@meat} and #{@condiment} on #{@bread} bread"
  end                                                                                     # => nil
end                                                                                       # => nil

sandwich = Sandwich.new("special", "whole wheat", "turkey", "mayonnaise")  # => #<Sandwich:0x007fa4aa07fc00 @name="special", @bread="whole wheat", @meat="turkey", @condiment="mayonnaise">

def greeting(options={})
  default={
    a: "I",                                       # => "I"
    b: "Like",                                    # => "Like"
    c: "You"                                      # => "You"
  }.merge(options)                                # => {:a=>"I", :b=>"Love", :c=>"You"}
  "#{default[:a]} #{default[:b]} #{default[:c]}"  # => "I Love You"
end                                               # => nil
puts greeting(b: "Love")                          # => nil

def greeting(a: "I", b: "like", c: "you")
  "#{a} #{b} #{c}"                         # => "I Love you"
end                                        # => nil
puts greeting(b: "Love")                   # => nil



def greeting(name="Bob", message: "Hello")
  "#{name} says #{message}"                 # => "Bob says Hello", "Bob says Goodbye"
end                                         # => nil

puts greeting                      # => nil
puts greeting(message: "Goodbye")  # => nil

def greeting(name="Bob", message="Hello")
  "#{name} says #{message}"                # => "Goodbye says Hello"
end                                        # => nil

puts greeting(message="Goodbye")  # => nil

# >> I Love You
# >> I Love you
# >> Bob says Hello
# >> Bob says Goodbye
# >> Goodbye says Hello
