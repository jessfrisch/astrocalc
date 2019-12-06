module Astrocalc
  class Planets
    attr_reader :chart

    def initialize(chart)
      @chart = chart
    end

    def positions
      Astrodata::PLANETS.inject({}) do |planets, planet|
        planets[planet] = Planet.new(chart, planet).position
        planets
      end
    end

    def houses
      Astrodata::PLANETS.inject({}) do |planets, planet|
        planets[planet] = Planet.new(chart, planet).house
        planets
      end
    end
  end
end
