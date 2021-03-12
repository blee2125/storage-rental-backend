class CreateRentalForms < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_forms do |t|
      t.string :unit_number
      t.string :customer
      t.string :comments

      t.timestamps
    end
  end
end
