module Astrocalc
  class Planet
    attr_reader :chart, :planet

    def initialize(chart, planet)
      @chart = chart
      @planet = planet
    end

    def longitude
      Ephemeris::longitude(chart, planet)
    end

    def speed
      Ephemeris::speed(chart, planet)
    end

    def position_raw
      Ephemeris::planet_position(chart, planet)
    end

    def position
      calculate_position(longitude, speed)
    end

    def house
      House.new(chart).house_for(position_raw[0])
    end

    private

    def calculate_position(longitude, speed)
      sign = (longitude / 30).floor
      position_in_sign = longitude - (sign * 30)
      degree = position_in_sign.floor
      minute = ((position_in_sign - degree) * 60).floor

      retrograde = speed < 0 ? "R" : ""

      [Astrodata::SIGNS[sign], degree, minute, retrograde]
    end
  end
end
