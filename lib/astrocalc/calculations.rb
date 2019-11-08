module Astrocalc
  class DatePlace

    attr_accessor :year, :month, :hour, :minute
    attr_accessor :lon, :lat, :alt

    def initialize(date, place)
      @year   = date[0]
      @month  = date[1]
      @day    = date[2]
      @hour   = date[3]
      @minute = date[4]

      @lat = place[0]
      @lon = place[1]
      @alt = place[2] || 0
    end

    def julian_date
      hour = @hour.to_f + (@minute.to_f / 60)
      Swe4r::swe_julday(@year, @month, @day, hour)
    end
  end
end
