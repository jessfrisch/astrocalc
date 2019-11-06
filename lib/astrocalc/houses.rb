module Astrocalc
  class Houses
    attr_reader :date_place, :raw

    def initialize(date_place)
      @date_place = date_place
      @raw = Ephemeris.new(date_place).get_houses
    end

    def all
      (1..12).inject([]) do |all, i|
        all << sign(@raw[i], 0)
      end
    end


    private

    def sign(cusp, sign)
      unless cusp < 30
        sign((cusp - 30), (sign + 1))
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
