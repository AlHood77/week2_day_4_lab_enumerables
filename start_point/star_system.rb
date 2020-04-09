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

    def get_smallest_planet()
      @planets.min_by { |planet| planet.diameter }
    end

    def get_planets_with_no_moons
      @planets.find_all { |planet| planet.number_of_moons == 0}
    end

    def get_planets_with_more_moons(moons)
      more_than_four = @planets.find_all { |planet| planet.name if planet.number_of_moons > moons}
      return more_than_four.map { |planet| planet.name }
    end


    def get_number_of_planets_closer_than(distance)
      rocks_closest_to_the_sun = @planets.find_all { |planet| planet.name if planet.distance_from_sun < distance}
      return rocks_closest_to_the_sun.map.count { |planet| planet}
    end

    def get_total_number_of_moons
      @planets.reduce(0) { |total, moon| total + moon.number_of_moons }
    end

end