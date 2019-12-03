module Astrocalc
  class House
    attr_reader :chart, :system

    def initialize(chart)
      @chart = chart
      @system = chart.house_system
    end

    def houses_raw
      Ephemeris::houses(chart)
    end

    def house(number)
      sign(houses_raw[number], 0)
    end

    def house_for(planet_raw)
      calculate_house_for(planet_raw)
    end

    def houses
      (1..12).inject([[""]]) do |houses, house|
        houses << sign(houses_raw[house], 0)
      end
    end

    def ascendant
      sign(houses_raw[13], 0) # 13 is from swe_houses
    end
    alias_method :asc, :ascendant
    alias_method :ac, :ascendant

    def midheaven
      sign(houses_raw[14], 0) # 13 is from swe_houses
    end
    alias_method :mc, :midheaven

    private

    def sign(cusp, sign)
      unless cusp < 30
        sign(cusp - 30, sign + 1)
      else
        [Astrodata::SIGNS[sign], degree(cusp), minute(cusp)]
      end
    end

    def degree(cusp)
      cusp.floor
    end

    def minute(cusp)
      ((cusp - degree(cusp)) * 60).floor
    end

    def calculate_house_for(planet_raw)
      result = 0
      houses = houses_raw.drop(1).take(12) << 360
      houses.each_cons(2) do |house1, house2|
        if (house1..house2).include?(planet_raw)
          result = houses.index(house1) + 1
        end
      end

      result
    end
  end
end
