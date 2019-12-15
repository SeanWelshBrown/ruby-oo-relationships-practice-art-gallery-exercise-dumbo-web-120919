class Gallery

  attr_reader :name, :city

  @@all = []

  # INITIALIZATION #

  def initialize(name, city)  # WORKS #
    @name = name
    @city = city
    @@all << self
  end

  # INSTANCE METHODS #

  def paintings # WORKS #
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists # WORKS #
    paintings.collect { |painting| painting.artist }
  end

  def artist_names  # WORKS #
    artists.collect { |artist| artist.name }
  end

  def most_expensive_painting # WORKS #
    prices = paintings.collect { |painting| painting.price }
    sorted_prices = prices.sort
    paintings.find { |painting| painting.price == sorted_prices[-1] }
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  # END #

end
