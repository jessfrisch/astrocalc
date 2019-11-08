# JOAN BAEZ
# 9 January 1941 at 10:45 AM
# New York, NY (40.7128, -74.0060, 33) 

module Astrocalc
  module Support
    class Joan
      def date
        # year, month, day, hour, minute, second
        # time is utc 
        [1941, 1, 9, 15, 45]
      end

      def place
        # latitude, longitude, altitude
        [40.5833, -74.1500, 33]
      end

      def jd
        2430004.15625
      end

      def example_planet
        "Sun"
      end

      def example_planet_raw
        [289.0202835856721, -0.00010198915699688072,
0.9833762182696637, 1.018798412246337, -1.3038112102911694e-05, 3.159913679005266e-05]
      end

      def example_planet_longitude
        289.0202835856721
      end

      def example_planet_speed
        1.018798412246337
      end

      def example_planet_position
        ["Capricorn", 19, 1, ""]
      end

      def example_planet_positions
        {
          "Sun" => ["Capricorn", 19, 1, ""],
          "Moon" => ["Gemini", 3, 44, ""],
          "Mercury" => ["Capricorn", 17, 55, ""],
          "Venus" => ["Sagittarius", 24, 42, ""],
          "Mars" => ["Sagittarius", 3, 15, ""],
          "Jupiter" => ["Taurus", 5, 50, ""],
          "Saturn" => ["Taurus", 7, 53, ""],
          "Uranus" => ["Taurus", 22, 20, "R"],
          "Neptune" => ["Virgo", 27, 39, "R"],
          "Pluto" =>  ["Leo", 3, 30, "R"]
        }
      end

      def example_houses_raw
        [0.0, 1.5354917422989132, 42.56551023553437, 69.26741270426848, 90.81242115381679, 112.49066875975456, 139.67421113116052, 181.53549174229892, 222.56551023553436, 249.26741270426848, 270.8124211538168, 292.49066875975456, 319.6742111311605, 1.5354917422989132, 270.8124211538168, 270.88551198153675, 180.64078765896934, 0.9651762608327802, 0.7037621692045377, 1.9544666731037048, 180.70376216920454, 0.0, 0.0]
      end

      def example_house
        ["Aries", 1, 32]
      end

      def example_houses
        [
          [""], # 0 padded 
          ["Aries", 1, 32],
          ["Taurus", 12, 33],
          ["Gemini", 9, 16],
          ["Cancer", 0, 48],
          ["Cancer", 22, 29],
          ["Leo", 19, 40],
          ["Libra", 1, 32],
          ["Scorpio", 12, 33],
          ["Sagittarius", 9, 16],
          ["Capricorn", 0, 48],
          ["Capricorn", 22, 29],
          ["Aquarius", 19, 40]
        ]
      end

      def example_aspect_input
        ["Sun", "Neptune"]
      end

      def example_aspect
        ["Trine", 8, 39]
      end

      def example_non_aspect
        ["Sun", "Pluto"]
      end

      def example_planet_aspects_input
        "Sun"
      end

      def example_planet_aspects
        [
          ["Conjunction", "Sun", "Mercury", 1, 06],
          ["Trine", "Sun", "Uranus", 3, 19],
          ["Trine", "Sun", "Neptune", 8, 39]
        ]
      end

      def example_aspects
        [
           ["Conjunction", "Sun", "Mercury", 1, 06],
           ["Trine", "Sun", "Uranus", 3, 19],
           ["Trine", "Sun", "Neptune", 8, 39],
           ["Opposition", "Moon", "Mars", 0, 29],
           ["Trine", "Moon", "Neptune", 6, 05],
           ["Sextile", "Moon", "Pluto", 0, 14],
           ["Trine", "Mercury", "Uranus", 4, 24],
           ["Trine", "Mercury", "Neptune", 9, 44],
           ["Square", "Venus", "Neptune", 2, 57],
           ["Sextile", "Mars", "Neptune", 5, 35],
           ["Trine", "Mars", "Pluto", 0, 15],
           ["Conjunction", "Jupiter", "Saturn", 2, 03],
           ["Square", "Jupiter", "Pluto", 2, 20],
           ["Square", "Saturn", "Pluto", 4, 23],
           ["Trine", "Uranus", "Neptune", 5, 20],
           ["Sextile", "Neptune", "Pluto", 5, 51],
        ]
      end
    end
  end
end
