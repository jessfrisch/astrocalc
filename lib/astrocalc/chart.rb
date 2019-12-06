module Astrocalc
  class Chart
    attr_reader :date_place
    attr_reader :house_system

    def initialize(date, place, house_system = "placidus")
      @date_place = DatePlace.new(date, place)
      @house_system = house_system_symbol(house_system)
    end

    def planet_raw(planet)
      Planet.new(self, planet).position_raw
    end

    def planet_positions
      Planets.new(self).positions
    end

    def planet_houses
      Planets.new(self).houses
    end

    def houses_raw
      House.new(self).houses_raw
    end

    def houses
      House.new(self).houses
    end

    def aspects
      Aspect.new(self).aspects
    end

    private

    def house_system_symbol(house_system)
     Astrodata::HOUSE_SYSTEMS[house_system.downcase]
    end
  end
end
