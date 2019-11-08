require "spec_helper"

module Astrocalc
  describe Ephemeris do
    let(:test) { DATA }
    let(:date_place) { DatePlace.new(test.date, test.place) }
    let(:chart) { Chart.new(date_place) } 

    describe "#planet_position" do
      context "when given a valid chart and planet name" do
        it "returns the raw data array from the swe" do
          expect(Ephemeris.planet_position(chart, test.example_planet)).to eq(test.example_planet_raw)
        end
      end
    end

    describe "#longitude" do
      context "when given a valid chart and planet name" do
        it "returns the planet's longitude" do
          expect(Ephemeris.longitude(chart, test.example_planet)).to eq(test.example_planet_longitude)
        end
      end
    end

    describe "#speed" do
      context "when given a valid chart and planet name" do
        it "returns the planet's speed" do
          expect(Ephemeris.speed(chart, test.example_planet)).to eq(test.example_planet_speed)
        end
      end
    end

    describe "#houses" do
      context "when given a valid chart" do
        it "returns an array of house cusps" do
          expect(Ephemeris.houses(chart)).to eq(test.example_houses_raw)
        end
      end
    end
  end
end
