require "rails_helper"

describe "challenges/index.html.erb" do

  context "with 2 challenges" do
    before(:each) do
      assign(:challenges, [
        stub_model(Challenge, :name => "Whole 30"),
        stub_model(Challenge, :name => "Whole Life Challenge")
      ])
    end

    it "displays both challenges" do
      render

      expect(rendered).to include("Whole 30")
      expect(rendered).to include("Whole Life Challenge")
    end
  end
end
