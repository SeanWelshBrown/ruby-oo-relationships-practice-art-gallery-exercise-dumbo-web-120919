class Artist

  attr_reader :name, :years_experience

  @@all = []

  # INITIALIZATION #

  def initialize(name, years_experience)  # WORKS #
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  # INSTANCE METHODS #

  def create_painting(title, price, gallery)  # WORKS #
    Painting.new(self, title, price, gallery)
  end

  def paintings # WORKS #
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries # WORKS #
    galleries = paintings.collect { |painting| painting.gallery }
    galleries.uniq
  end

  def cities  # WORKS #
    galleries.collect { |gallery| gallery.city }
  end

  # CLASS METHODS #

  def self.all  # WORKS #
    @@all
  end

  def self.total_experience # WORKS #
    all_years_exp = @@all.collect { |artist| artist.years_experience }
    all_years_exp.inject { |sum, n| sum += n }
  end

  def self.most_prolific  # WORKS #
    most_prolific_artist = "blank"
    prolificness = 0.0
    @@all.each do |artist|
      artist_prolificness = ((artist.paintings.count).to_f / (artist.years_experience).to_f)
      if artist_prolificness > prolificness
        prolificness = artist_prolificness
        most_prolific_artist = artist
      end
    end
    most_prolific_artist
  end

  # END #

end
