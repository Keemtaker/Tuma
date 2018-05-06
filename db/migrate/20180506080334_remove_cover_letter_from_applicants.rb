class RemoveCoverLetterFromApplicants < ActiveRecord::Migration[5.1]
  def change
    remove_column :applicants, :cover_letter, :string
  end
end
