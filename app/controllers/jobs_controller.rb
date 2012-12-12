class JobsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:show, :index]
  
  def index
    if current_admin
      @current_admin = current_admin.id
      @jobs = Job.where('admin_id = '+@current_admin.to_s )
    else
      @jobs = Job.all 
    end 
  end

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:job])
    @job.admin = current_admin
    @job.save!
    redirect_to jobs_path
  end
  
  def show
    @job = Job.find(params[:id])
  end

  def edit
    @current_admin = current_admin.id
    @job = Job.find(params[:id])
  end

  def update
    @current_admin = current_admin.id
    @job = Job.find(params[:id])
    @job.update_attributes(params[:job])
    redirect_to @job
  end
end
