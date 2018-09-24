class Gallery

	attr_reader :name, :city

	@@all = []

	def initialize(name, city)
	  @name = name
	  @city = city
	  @@all << self
	end

	def self.all
		@@all
	end	

	def self.cities
		cities = @@all.collect{|gal| gal.city}
		cities.uniq
	end

	def artists
		paintings_on_show = Painting.all.select{|painting| painting.gallery == self}
		artist_list = paintings_on_show.collect{|painting| painting.artist}
		artist_list.uniq
	end

	def artist_names
		artists.collect { |artist| artist.name }
	end

	def total_experience
		exp_total = 0
		artists.each { |artist| exp_total += artist.years_active }
		exp_total
	end
end
