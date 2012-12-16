class ApplicationsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  
  def index
  end

  def new
    @job = Job.find(params[:job_id])
    @application = Application.new
  end

  def create
    @job = Job.find(params[:job_id])
    @application = Application.new(params[:application])
    @application.user = current_user
    @application.job = @job
    if @application.save
      ApplicationMailer.for_the(@application).deliver!
      redirect_to job_path(params[:job_id]), :notice => "Job Application Send Successfully"
    else
      render new, :alert => "Error during sending"
    end
  end
end
