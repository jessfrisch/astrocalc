module Astrocalc
  class Aspect
    attr_reader :chart

    def initialize(chart)
      @chart = chart
    end

    def aspects
      planets = Astrodata::PLANETS
      planets.map do |planet_a|
        planet_number = Astrodata::PLANETS.index(planet_a)
        planets.drop(planet_number + 1).map do |planet_b|
          if aspect = aspect(planet_a, planet_b)
            [aspect[0], planet_a, planet_b, aspect[1], aspect[2]]
          end
        end.compact
      end.flatten(1)
    end

    def aspect(planet_a, planet_b)
      a = Planet.new(chart, planet_a)
      b = Planet.new(chart, planet_b)

      raw_degree = (a.longitude - b.longitude).abs

      Astrodata::ASPECTS.each do |aspect_degree, aspect_name|
        if degree = calculate_aspect(raw_degree, aspect_degree)
          return [aspect_name, degree].flatten
        end
      end

      nil
    end

    private

    def calculate_aspect(raw_degree, aspect_degree)
      orb = Astrodata::ORBS[Astrodata::ASPECTS[aspect_degree]]
      degree = (aspect_degree - raw_degree).abs

      # obtuse angles
      degree2 = ((360 - aspect_degree) - raw_degree).abs
      degree = degree2 <= orb ? degree2 : degree

      if degree <= orb
        [degree.floor, minutes(degree)]
      end
    end

    # duplicated in ephemeris, extract calculations class?
    def minutes(degree)
      ((degree - degree.floor) * 60).round
    end
  end
end
