class Pirate
  PIRATES = []
  attr_accessor :name, :weight, :height
  def initialize(input)
    @name = input[:name]
    @weight = input[:weight]
    @height = input[:height]
    PIRATES << self
  end
  def self.all
    PIRATES
  end
end
