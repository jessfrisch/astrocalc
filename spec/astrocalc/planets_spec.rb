require "spec_helper"

module Astrocalc
  describe Planets do
    let(:test) { DATA }
    let(:chart) { Chart.new(test.date, test.place) }
    let(:planets) { described_class.new(chart) }

    describe "#positions" do
      it "returns a hash of the planets and their positions" do
        expect(planets.positions).to eq(test.example_planet_positions)
      end
    end
  end
end
