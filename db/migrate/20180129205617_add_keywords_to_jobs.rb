class AddKeywordsToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :keywords, :string
  end
end
