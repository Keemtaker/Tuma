class AddUnregisteredCompanyPhotoToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :unregistered_company_photo, :string
  end
end
