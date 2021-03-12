class AddLikesColumnToUnitsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :likes, :integer
  end
end
