module Astrocalc
  class House
    attr_reader :chart

    def initialize(chart)
      @chart = chart
    end

    def houses_raw
      Ephemeris::houses(chart)
    end

    def house(number)
      sign(houses_raw[number], 0)
    end

    def houses
      (1..12).inject([[""]]) do |houses, house|
        houses << sign(houses_raw[house], 0)
      end
    end

    def ascendant; self.house(1); end
    alias_method :asc, :ascendant
    alias_method :ac, :ascendant

    def imum_coeli; self.house(4); end
    alias_method :ic, :imum_coeli

    def descendant; self.house(7); end
    alias_method :desc, :descendant 
    alias_method :dc, :descendant 

    def midheaven; self.house(10); end
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
  end
end
