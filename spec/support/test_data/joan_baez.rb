module Astrocalc
  module Support

    # JOAN BAEZ
    # 9 January 1941 at 10:45 AM
    # New York, NY (40.7128, -74.0060, 33) 

    def joan_date
      # year, month, day, hour, minute, second
      # time is utc 
      [1941, 1, 9, 15, 45]
    end

    def joan_jd
      2430004.15625
    end

    def joan_place
      # latitude, longitude, altitude
      [40.5833, -74.1500, 33]
    end

    # CELESTIAL BODY (SUN)

    def joan_celestial_body
      "Sun"
    end

    def joan_sun_sign
      "Capricorn"
    end

    def joan_sun_degree
      19
    end

    def joan_sun_minute
      1
    end

    # CHART

    def joan_celestial_bodies
      {
        "Sun" => ["Capricorn", 19, 1],
        "Moon" => ["Gemini", 3, 44],
        "Mercury" => ["Capricorn", 17, 55],
        "Venus" => ["Sagittarius", 24, 42],
        "Mars" => ["Sagittarius", 3, 15],
        "Jupiter" => ["Taurus", 5, 50],
        "Saturn" => ["Taurus", 7, 53],
        "Uranus" => ["Taurus", 22, 20],
        "Neptune" => ["Virgo", 27, 39],
        "Pluto" =>  ["Leo", 3, 30]
      }
    end

    def joan_all_houses
      [
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

    # EPHEMERIS

    def joan_ephemeris
      [289.0202835856721, -0.00010198915699688072,
0.9833762182696637, 1.018798412246337, -1.3038112102911694e-05,
3.159913679005266e-05]
    end

    def joan_eph_longitude
      289.0202835856721
    end

    def joan_eph_speed
      1.018798412246337
    end

    def joan_raw_houses
      [0.0, 1.5354917422989132, 42.56551023553437,
       69.26741270426848, 90.81242115381679, 112.49066875975456,
       139.67421113116052, 181.53549174229892, 222.56551023553436,
       249.26741270426848, 270.8124211538168, 292.49066875975456,
       319.6742111311605, 1.5354917422989132, 270.8124211538168,
       270.88551198153675, 180.64078765896934, 0.9651762608327802, 
       0.7037621692045377, 1.9544666731037048, 180.70376216920454, 0.0, 0.0]
    end
  end
end
