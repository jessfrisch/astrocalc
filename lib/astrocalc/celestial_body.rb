module Astrocalc
  class CelestialBody
    attr_reader :name, :date_place
    attr_reader :longitude, :sign_number, :position_in_sign
    attr_reader :sign, :degree, :minute

    def initialize(name, date_place)
      raise "Invalid name" unless Astrodata::CELESTIAL_BODIES.include?(name)
      @name = name
      @date_place = date_place

      get_position_data
    end

    private

    def get_position_data
      @longitude = Ephemeris.new(date_place).get_lon(name)
      @sign_number = (longitude / 30).floor
      @position_in_sign = longitude - (sign_number * 30)
      @sign = Astrodata::SIGNS[sign_number]
      @degree = position_in_sign.floor
      @minute = ((position_in_sign - degree) * 60).floor
    end
  end
end
