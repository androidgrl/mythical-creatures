class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat_count = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @eat_count += 1
    if @eat_count > 2
      @hungry = false
    else
      @hungry = true
    end
  end
end
