class AddFullNameToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :full_name, :string
  end
end
