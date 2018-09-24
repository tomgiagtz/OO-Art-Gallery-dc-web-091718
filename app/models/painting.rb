class Painting

  attr_reader :title, :style, :artist
  attr_accessor :gallery


  @@all = []

  def initialize(title, style, artist, gallery="nil")
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.styles
  	styles = @@all.collect { |painting| painting.style }
  	styles.uniq
  end

end
