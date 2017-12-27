class JobsController < ApplicationController

  def index
     @jobs = Job.all
  end

  def show
     @job = Job.find(params[:id])
  end

  def new
     @job = Job.new
  end

  def create
    @company = Company.find(params[:id])
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end


  private

  def job_params
    params.require(:job).permit(:title, :description, :role, :requirements, :duties, :company_id)
  end
end
