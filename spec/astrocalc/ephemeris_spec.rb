require "spec_helper"

module Astrocalc
  describe Ephemeris do
    let(:test) { DATA }
    let(:chart) { Chart.new(test.date, test.place) }
    let(:chart_w) { Chart.new(test.date, test.place, "whole signs") }

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
        context "when given a valid house system" do
          it "returns an array of placidus house cusps by default" do
            expect(Ephemeris.houses(chart)).to eq(test.example_houses_raw)
          end

          it "returns an array of given system house cusps" do
            expect(Ephemeris.houses(chart_w)).to eq(test.example_houses_raw_w)
          end
        end
      end
    end
  end
end
