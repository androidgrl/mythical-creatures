class Werewolf
  attr_reader :name, :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @states = [true, false, true]
    @change_count = 0
  end

  def human?
    @human
  end

  def werewolf?
    @werewolf
  end

  def change!
    @werewolf = @states[@change_count]
    @human = @states[@change_count + 1]
    @change_count += 1
  end


end
