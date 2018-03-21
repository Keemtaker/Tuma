class AddJobApplicationTypeToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :job_application_type, :string
  end
end
