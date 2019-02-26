require_relative "./planet.rb"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    numbered_planet_list = []
    i = 1
    @planets.each do |planet|
      numbered_planet_list << "#{i}. #{planet.name}"
      i += 1
    end
    return "Planets orbiting #{@star_name}:\n#{numbered_planet_list.join("\n")}"
  end

  def find_planet_by_name(name)
    name.capitalize!
    @planets.each do |i|
      if (@planets.count { |i| (i.name == name) } > 1)
        found_planets = []
        planets.each do |i|
          if (i.name == name)
            found_planets << i
          end
        end
        found_planets.each do |i|
          puts "There's #{found_planets.length} planets with that name. Here's more info about one of them: #{i.summary}"
        end
        return found_planets
      elsif i.name == name
        return i
      end
    end
    return "Sorry, no planet with that name found."
  end
end
