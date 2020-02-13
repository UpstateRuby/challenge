require "rails_helper"

describe "challenges/_challenge.html.erb", type: :view do
  before(:each) do
    @challenge = build_stubbed(:challenge)
  end
  it "shows the challenge" do
    render "challenges/challenge", challenge: @challenge
    path = challenge_path(@challenge)
    expect(rendered).to include(@challenge.name)
    expect(rendered).to have_selector("a[href='#{path}']")
  end
end
