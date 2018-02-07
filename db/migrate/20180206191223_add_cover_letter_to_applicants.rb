class AddCoverLetterToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :cover_letter, :text
  end
end
