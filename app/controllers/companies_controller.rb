class CompaniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
     @companies = Company.all
  end

  def new
     @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
      preview_company
  end

  def show
     @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    edit
    @company.update(company_params)
    if @company.update(company_params)
      flash[:notice] = "Company profile successfully updated."
      redirect_to @company
    else
      render :edit
    end
  end


private

  def preview_company
    if params[:previewButt] == "Preview"
      flash[:alert] = "This is a PREVIEW of your company profile. Go back to the previous tab to Submit or make edits."
      render :create
    elsif params[:createButt] == "Submit"
      @company.save
      flash[:notice] = "Congrats on creating a company profile."
      redirect_to @company
    else
      render :new
    end
  end

  def company_params
    params.require(:company).permit(:name, :description, :website, :location, :user_id, :photo, :logo, perk_ids:[], industry_ids:[])
  end
end

