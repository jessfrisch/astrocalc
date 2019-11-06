module Astrocalc
  class Ephemeris

    attr_reader :date_place

    def initialize(date_place)
      @date_place = date_place
      Swe4r::swe_set_ephe_path("")
    end

    # cb = celestial body

    def get_raw(cb)
      julian_date = @date_place.julian_date
      cb_number = Astrocalc::Astrodata::CELESTIAL_BODIES.index(cb)
      Swe4r::swe_calc_ut(julian_date, cb_number, Swe4r::SEFLG_MOSEPH|Swe4r::SEFLG_SPEED)
    end

    def get_lon(cb)
      get_raw(cb)[0]
    end

    def get_speed(cb)
      get_raw(cb)[3]
    end

    def get_houses
      julian_date = @date_place.julian_date
      Swe4r::swe_houses(julian_date, @date_place.lat, @date_place.lon, "P")
    end
  end
end
