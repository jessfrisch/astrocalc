require "spec_helper"

module Astrocalc
  describe Chart do
    let(:date_place) { DatePlace.new(joan_date, joan_place) }
    let(:chart) { described_class.new(date_place) }

    describe "#list_celestial_bodies" do
      it "returns an hash of names => degrees and minutes" do
        expect(chart.list_celestial_bodies).to eq(joan_celestial_bodies)
      end
    end
  end
end
