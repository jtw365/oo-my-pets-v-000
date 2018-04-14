require 'pry'
class Owner

  @@all = []


  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(fish)
    @pets[:fishes] << fish
    binding.pry
  end


end
