class ApplicantsController < ApplicationController
    skip_before_action :authenticate_user!

  def new
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new

  end

  def create
    @applicant = Applicant.new(applicant_params)
    @job =  params[:job_id]
    @applicant.job_id = @job
    @applicant.save
      #if @applicant.save
       # redirect_to dashboard_job_path(@job, @applicant)
      #else
       # render :new
      #end
  end

  def show
    @applicant = Applicant.find(params[:id])
  end


  private

  def applicant_params
    params.require(:applicant).permit(:first_name, :job_id)
  end

end
