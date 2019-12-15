require_relative '../config/environment.rb'

rembrandt = Artist.new("Rembrandt", 40)
van_gogh = Artist.new("Van Gogh", 30)
monet = Artist.new("Monet", 36)
rockwell = Artist.new("Norman Rockwell", 42)
basquiat = Artist.new("Jean-Michel Basquiat", 18)

met = Gallery.new("The Met", "New York City")
louvre = Gallery.new("The Louvre", "Paris")
guggenheim = Gallery.new("Guggenheim", "New York City")
downtown = Gallery.new("Downtown Art", "Boston")
met = Gallery.new("The Met", "New York City")

leaves = Painting.new(rembrandt, "Leaves", 4000, met)
stars = Painting.new(van_gogh, "Stars", 8000, louvre)
nice_people = Painting.new(rembrandt, "Nice People", 5000, met)
abstract = Painting.new(basquiat, "Abstract", 10000, guggenheim)
kids = Painting.new(rockwell, "Kids", 3500, downtown)
dutch_stuff = Painting.new(rembrandt, "Dutch Stuff", 12000, louvre)
sadness = Painting.new(van_gogh, "Sadness", 6000, guggenheim)

binding.pry

puts "Bob Ross rules."
