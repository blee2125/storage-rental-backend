class ChangeColumnNameToUnitNumber < ActiveRecord::Migration[6.0]
  def change
    rename_column :units, :name, :unit_number
  end
end
