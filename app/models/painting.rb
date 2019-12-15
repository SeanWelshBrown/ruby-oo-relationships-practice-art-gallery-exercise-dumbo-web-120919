class Painting

  attr_reader :artist, :title
  attr_accessor :price, :gallery

  @@all = []

  # INITIALIZATION #

  def initialize(artist, title, price, gallery) # WORKS #
    @artist = artist
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  def self.total_price  # WORKS #
    all_prices = @@all.collect { |painting| painting.price }
    total = all_prices.inject { |sum, n| sum += n}
  end

  # END #

end
