class ProfilesController < ApplicationController
  def index
  end
  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end
  def create
    @user = User.find(params[:user_id])
    @profile = Profile.new(params[:profile])
    @profile.user = current_user
    if @profile.save
      redirect_to jobs_path, :notice => "Profile Sucessfully created"
    else
      render new, :alert => "Error while creating your profile"
    end
  end
end
