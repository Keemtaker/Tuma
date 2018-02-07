class AddEmailToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :email, :string
  end
end
