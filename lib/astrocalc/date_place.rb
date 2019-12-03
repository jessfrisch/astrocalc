module Astrocalc
  class DatePlace

    attr_accessor :year, :month, :hour, :minute
    attr_accessor :longitude, :latitude, :altitude
    attr_accessor :julian

    def initialize(date, place)
      @year   = date[0]
      @month  = date[1]
      @day    = date[2]
      @hour   = date[3]
      @minute = date[4]

      @latitude  = place[0]
      @longitude = place[1]
      @altitude  = place[2] || 0

      @julian = julian_date
    end

    def julian_date
      hour = @hour.to_f + (@minute.to_f / 60)
      Swe4r::swe_julday(@year, @month, @day, hour)
    end
  end
end
