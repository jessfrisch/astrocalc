module Astrocalc
  module Support

    # ADA LOVELACE
    # December 10, 1815 at 1:00 PM UTC
    # London, England (51.5074, -0.1278, 36)

    def ada_date
      # year, month, day, hour, minute, second
      # time is utc 
      [1815, 12, 10, 13, 0]
    end

    def ada_jd
      2384318.0416666665
    end

    def ada_place
      # latitude, longitude, altitude
      [51.5074, -0.1278, 36]
    end

    # CELESTIAL BODY (SUN)

    def ada_celestial_body
      "Sun"
    end

    def ada_sun_sign
      "Sagittarius"
    end

    def ada_sun_degree
      17
    end

    def ada_sun_minute
      40
    end

    # HOUSES

    def ada_raw_houses
      [0.0, 8.396158232937434, 52.39854510645043, 75.32196789475343,
93.22126718267293, 111.74378674122704, 137.28812894755254, 188.39615823293744,
232.39854510645043, 255.3219678947534, 273.22126718267293, 291.74378674122704,
317.28812894755254, 8.396158232937434, 273.22126718267293, 273.51092980171757,
182.84514365498816, 3.8264969754429408, 2.4758784302681534, 5.837713047008194,
182.47587843026815, 0.0, 0.0]
    end

    # CHART

    def ada_celestial_bodies
      {
        "Sun" => ["Sagittarius", 17, 40],
        "Moon" => ["Aries", 5, 39],
        "Mercury" => ["Sagittarius", 0, 31],
        "Venus" => ["Scorpio", 1, 32],
        "Mars" => ["Aries", 20, 23],
        "Jupiter" => ["Scorpio", 2, 14],
        "Saturn" =>  ["Aquarius", 8, 34],
        "Uranus" =>  ["Sagittarius", 7, 48],
        "Neptune" =>  ["Sagittarius", 19, 34],
        "Pluto" =>  ["Pisces", 20, 53]
      }
    end



    # EPHEMERIS

    def ada_ephemeris
      [257.6707486464757, -4.482023431395337e-05,
0.9843954179680275,1.0168366730896716, 8.483798190925824e-06,
-0.00011445231921735999]
    end

    def ada_eph_longitude
      257.6707486464757
    end

    def ada_eph_speed
      1.0168366730896716
    end
  end
end
