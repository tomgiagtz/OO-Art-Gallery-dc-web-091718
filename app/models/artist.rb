class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
  	@@all
  end

  def paintings
  	Painting.all.select do |painting|
  		painting.artist == self
  	end
  end

  def galleries
  	paintings.collect{|painting| painting.gallery}.uniq
  end

  def cities
  	galleries.collect{|gallery| gallery.city}.uniq
  end

  def self.avg_experience
  	total_exp = 0.0
  	self.all.each { |artist| total_exp += artist.years_active }
  	total_exp / self.all.size
  end
end
