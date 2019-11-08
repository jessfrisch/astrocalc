module Astrocalc
  module Ephemeris

    def self.planet_position(chart, planet)
      julian = chart.date_place.julian_date
      planet_number = Astrocalc::Astrodata::PLANETS.index(planet)
      raw(julian, planet_number)
    end

    def self.longitude(chart, planet)
      planet_position(chart, planet)[0]
    end

    def self.speed(chart, planet)
      planet_position(chart, planet)[3]
    end

    def self.houses(chart)
      julian = chart.date_place.julian_date
      lat = chart.date_place.latitude
      lon = chart.date_place.longitude

      Swe4r::swe_houses(julian, lat, lon, "P")
    end

    private

    def self.raw(julian, planet_number)
      Swe4r::swe_set_ephe_path("")
      Swe4r::swe_calc_ut(julian, planet_number, Swe4r::SEFLG_MOSEPH|Swe4r::SEFLG_SPEED)
    end
  end
end
