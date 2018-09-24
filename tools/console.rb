require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("mickey", 2)
a2 = Artist.new("kerry", 1)

g1 = Gallery.new("gal1", "city1")
g2 = Gallery.new("gal2", "city2")
g3 = Gallery.new("gal3", "city2")

p1 = Painting.new("title 1", "finger paint", a1, g1)
p2 = Painting.new("title 2", "finger paint", a1, g2)
p3 = Painting.new("title 3", "digital", a2, g3)
p4 = Painting.new("title 4", "photography", a2, g1)

binding.pry
0
