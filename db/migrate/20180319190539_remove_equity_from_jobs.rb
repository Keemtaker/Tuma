class RemoveEquityFromJobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :equity, :string
  end
end
