require "spec_helper"

module Astrocalc
  describe Planet do
    let(:test) { DATA }

    let(:date_place) { DatePlace.new(test.date, test.place) }
    let(:chart) { Chart.new(date_place) }
    let(:planet) { described_class.new(chart, test.example_planet) }

    describe "#position_raw" do
      context "when given a valid planet name" do
        it "returns the ephemeris data for that planet and chart" do
          expect(planet.position_raw).to eq(test.example_planet_raw)
        end
      end
    end

    describe "#position" do
      context "when given a valid planet name" do
        it "returns the sign, degree, minute, and retrograde as an array" do
          expect(planet.position).to eq(test.example_planet_position) 
        end
      end
    end
  end
end
