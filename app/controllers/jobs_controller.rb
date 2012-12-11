class JobsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:show, :index]
  def index
    #@jobs = Jobs.all 
  end
  def new
    @job = Job.new
  end
end
