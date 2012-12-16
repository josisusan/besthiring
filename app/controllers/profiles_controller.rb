class ProfilesController < ApplicationController
  def index
  end
  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end
end
