class AddColumnToRentalForms < ActiveRecord::Migration[6.0]
  def change
    add_column :rental_forms, :unit_id, :integer
  end
end
