class CreateCompanyPerks < ActiveRecord::Migration[5.1]
  def change
    create_table :company_perks do |t|
      t.references :company, foreign_key: true
      t.references :perk, foreign_key: true

      t.timestamps
    end
  end
end
