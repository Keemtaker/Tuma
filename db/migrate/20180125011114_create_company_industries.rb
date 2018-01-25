class CreateCompanyIndustries < ActiveRecord::Migration[5.1]
  def change
    create_table :company_industries do |t|
      t.string :company
      t.string :industry

      t.timestamps
    end
  end
end
