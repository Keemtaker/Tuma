class CreateJobPerks < ActiveRecord::Migration[5.1]
  def change
    create_table :job_perks do |t|
      t.references :job, foreign_key: true
      t.references :perk, foreign_key: true

      t.timestamps
    end
  end
end
