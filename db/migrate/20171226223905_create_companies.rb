class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :location
      t.string :address
      t.string :sector

      t.timestamps
    end
  end
end
