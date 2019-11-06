module Astrocalc
  class Chart
    attr_reader :date_place

    def initialize(date_place)
      @date_place = date_place
    end

    def list_celestial_bodies
      Astrodata::CELESTIAL_BODIES.inject({}) do |bodies, body|
        cb = CelestialBody.new(body, date_place)
        bodies[body] = [cb.sign, cb.degree, cb.minute]; bodies
      end
    end
  end
end
