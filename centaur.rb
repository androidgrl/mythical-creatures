class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @sleep = false
    @run_or_shoot_count = 0
  end

  def shoot
    @run_or_shoot_count += 1
    if @sleep == true
      @cranky = false
    elsif @run_or_shoot_count > 2
      @cranky = true
    end
    cranky?||laying? ? "NO!" : "Twang!!!"
  end

  def run
    @run_or_shoot_count += 1
    if @sleep == true
      @cranky = false
    elsif @run_or_shoot_count > 2
      @cranky = true
    end
    cranky?||laying? ? "NO!" : "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
    @cranky = false
    @sleep = true
    standing? ? "NO!" : "ZZZZZ..."
    laying? ? "ZZZZZ..." : "NO!"
  end


  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

end
