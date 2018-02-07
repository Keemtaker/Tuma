class RemoveFirstNameFromApplicants < ActiveRecord::Migration[5.1]
  def change
    remove_column :applicants, :first_name, :string
  end
end
