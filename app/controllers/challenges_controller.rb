class ChallengesController < ApplicationController
  before_action :authenticate_user!

  def index
    @challenges = current_user.challenges
  end

  def show
    @challenge = current_user.challenges.find(params[:id])
  end
end
