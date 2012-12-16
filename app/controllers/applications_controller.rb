class ApplicationsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  
  def index
  end

  def new
    @job = Job.find(params[:job_id])
    @application = Application.new
  end

  def create
    @application = Application.new(params[:application])
    @application.user_id = current_user
    @application.job_id = params[:job_id]
    if @application.save
      
      redirect_to job_path(params[:job_id]), :notice => "Job Application Send Successfully"
      
    else
      render new, :alert => "Error during sending"
    end
  end
end
