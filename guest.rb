# Your guests should have
# - Name
class Guest

  attr_reader :name, :money

  def initialize(name, money)
    @name = name
    @money = money
  end
end