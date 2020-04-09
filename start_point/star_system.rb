class StarSystem
  attr_reader :name, :planets

  def initialize (name, planets)
    @name = name
    @planets = planets
  end

# def planets.each { |planet_names| p planet_names[:name]}
# end


def planet_names
  @planets.map { |planet| planet.name }
end

def get_planet_by_name(planet)
  @planets.find {|planet| planet.name == "Mars"}
end
    
def get_largest_planet()
    @planets.max_by { |planet| planet.diameter }
end

end