class AddMobileNumberToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :mobile_number, :string
  end
end
