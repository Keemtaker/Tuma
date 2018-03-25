class AddJobEmailToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :job_email, :string
  end
end
