class RemoveRequirementsFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :requirements, :string
  end
end
