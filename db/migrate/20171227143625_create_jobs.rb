class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :role
      t.text :description
      t.string :requirements
      t.string :duties
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
