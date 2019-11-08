module Astrocalc
  class Chart
    attr_reader :date_place

    def initialize(date_place)
      @date_place = date_place
    end

    def planet_raw(planet)
      Planet.new(self, planet).position_raw
    end

    def planet_positions
      Planets.new(self).positions
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
  end
end
