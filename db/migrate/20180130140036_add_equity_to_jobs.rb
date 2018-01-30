class AddEquityToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :equity, :string
  end
end
