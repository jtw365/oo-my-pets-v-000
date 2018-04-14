require 'pry'
class Owner

  @@all = []


  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :mood

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
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |m|
      m.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |c|
      c.mood = "happy"
    end
    




end
