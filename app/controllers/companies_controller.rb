class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
     @companies = Company.all
  end

  def new
     @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
      if @company.save
        redirect_to @company
      else
        render :new
    end
  end

  def show
     @company = Company.find(params[:id])
  end

  def dashboard
    @dashboards = Applicant.all
  end


private

  def company_params
    params.require(:company).permit(:name, :description, :website, :location, :user_id, :photo, perk_ids:[], industry_ids:[])
  end
end

