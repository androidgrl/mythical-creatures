require_relative 'unicorn'

describe Unicorn do
  it "has a name" do
    unicorn = Unicorn.new("Mattie")
    unicorn.name.should == "Mattie"
  end
end
