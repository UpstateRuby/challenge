require 'rails_helper'

describe ChallengesController, type: :controller do

  let(:user) { create(:user) }

  subject { create(:challenge, user: user) }

  before do
    sign_in user
  end

  context "GET Index" do
    it "responds with a list of challenges" do
      get :index
      expect(assigns(:challenges)).to eq([subject])
    end
  end

  context "GET show" do
    it "shows the challenge" do
      get :show, params: { id: subject.id }
      expect(assigns(:challenge)).to eq(subject)
    end
  end
end
