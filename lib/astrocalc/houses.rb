module Astrocalc
  class Houses
    attr_reader :date_place, :raw

    def initialize(date_place)
      @date_place = date_place
      @raw = Ephemeris.new(date_place).get_houses
    end

    def all
    end
  end
end
