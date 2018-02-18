class JobsController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

  def index
    @search = Job.ransack(params[:q])
    @jobs = @search.result(distinct: true)
  end


  def new
    @company = Company.find(params[:company_id])
    @job = @company.jobs.new
  end

  def create
    @job = Job.new(job_params)
    @company =  params[:company_id]
    @job.company_id = @company
    if @job.save
      redirect_to company_job_path(@company, @job)
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :role, :job_type, :keywords, :company_id, :salary, :pitch)
  end
end
