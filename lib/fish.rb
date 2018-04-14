require 'pry'
class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @fishes = []
  end

  def self.buy_fish(fish)
    @fishes << fish
    fish.owner = self.
    #binding.pry
  end
end
