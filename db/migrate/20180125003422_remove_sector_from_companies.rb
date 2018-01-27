class RemoveSectorFromCompanies < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :sector
  end
end
