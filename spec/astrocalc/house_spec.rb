require "spec_helper"

module Astrocalc
  describe House do
    let(:test) { DATA }
    let(:chart) { Chart.new(test.date, test.place) }
    let(:chart_w) { Chart.new(test.date, test.place, "whole signs") }
    let(:house) { described_class.new(chart) }
    let(:house_w) { described_class.new(chart_w) }

    describe "#houses_raw" do
      it "returns the ephemeris data for the house cusps" do
        expect(house.houses_raw).to eq(test.example_houses_raw)
        expect(house_w.houses_raw).to eq(test.example_houses_raw_w)
      end
    end

    describe "#house" do
      context "given a valid number" do
        it "returns the sign and position for that cusp" do
          expect(house.house(1)).to eq(test.example_house)
          expect(house_w.house(1)).to eq(test.example_house_w)
        end
      end
    end

    describe "#house_for" do
      context "given a valid planet object" do
        it "returns the number of the planet's house" do
          expect(house.house_for(test.example_planet_raw_position)).to eq(test.example_planet_house)
        end
      end
    end

    describe "#houses" do
      it "returns an array of sign positions of the cusps" do
        expect(house.houses).to eq(test.example_houses)
        expect(house_w.houses).to eq(test.example_houses_w)
      end
    end

    describe "#ascendant" do
      it "returns an array of the AC sign and position" do
        expect(house.ascendant).to eq(test.ascendant)
        expect(house_w.ascendant).to eq(test.ascendant)
      end
    end

    describe "#asc" do
      it "returns an array of the AC sign and position" do
        expect(house.asc).to eq(test.ascendant)
      end
    end

    describe "#ac" do
      it "returns an array of the AC sign and position" do
        expect(house.ac).to eq(test.ascendant)
      end
    end

    describe "#midheaven" do
      it "returns an array of the MC sign and position" do
        expect(house.midheaven).to eq(test.midheaven)
      end
    end

    describe "#mc" do
      it "returns an array of the MC sign and position" do
        expect(house.mc).to eq(test.midheaven)
      end
    end
  end
end
