class Vampire
  attr_reader :name, :pet

  def initialize(name, pet="bat")
    @name = name
    @pet = pet
    @thirsty = true

  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end
end

# class Vampire
#   attr_reader :name, :pet
#
#   def initialize(name, pet="bat")
#     @name = name
#     @pet = pet
#   end
#
#   def thirsty?
#     drink ? false:true
#   end
#
#   def drink
#     true
#   end
# end
#
# if __FILE__ == $0
# vampire = Vampire.new("gladys")
# vampire.drink
# puts vampire.thirsty?
# end
