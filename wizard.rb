class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

  def incantation(statement)
    "sudo #{statement}"
  end

end

# wizard = Wizard.new('alex', bearded: false)  # => #<Wizard:0x007f9ff2857b10 @name="alex", @bearded=false>
# puts wizard.bearded?                         # => nil
#
# # >> false
# someting: true
# something => true
