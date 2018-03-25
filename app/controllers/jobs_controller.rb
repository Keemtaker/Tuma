class JobsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @search = Job.ransack(params[:q])
    @jobs = @search.result(distinct: true).order("id DESC")
  end


  def new
    if current_user
      @company = Company.find(params[:company_id])
      @job = @company.jobs.new
    else
      @job = Job.new
    end
  end

  def create
    if current_user
      @job = Job.new(job_params)
      @company =  params[:company_id]
      @job.company_id = @company
        if @job.save
          redirect_to company_job_path(@company, @job)
        else
          render :new
        end
    else
      quick_job
    end
  end


  def show
    @job = Job.find(params[:id])
  end

  def quick_job
    @job = Job.new(job_params)
    @job.save
      if @job.save
        redirect_to jobs_path
      else
        render :new
      end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :role, :job_type, :keywords, :company_id, :salary, :pitch, :unregistered_company_name, :unregistered_company_logo, :job_application_type, :job_email, :job_url, perk_ids:[])
  end
end
