
require "rails_helper"

describe "challenges/show.html.erb" do
  before(:each) do
    assign(:challenge, stub_model(Challenge, :name => "Whole 30"))
  end
  it "shows the challenge" do
    render

    expect(rendered).to include("Whole 30")
  end
end
