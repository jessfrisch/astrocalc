module Astrocalc
  module Astrodata
    PLANETS = %w(Sun Moon Mercury Venus Mars Jupiter Saturn Uranus Neptune Pluto).freeze

    PLANETS_EXT = PLANETS + %w(Ascendant)

    SIGNS = %w(Aries Taurus Gemini Cancer Leo Virgo Libra Scorpio
Sagittarius Capricorn Aquarius Pisces).freeze

    ASPECTS = {
      0 => "Conjunction",
      180 => "Opposition",
      90 => "Square",
      120 => "Trine",
      60 => "Sextile"
    }.freeze

    ORBS = {
      "Sextile" => 6,
    }
    ORBS.default = 10
    ORBS.freeze
  end
end
