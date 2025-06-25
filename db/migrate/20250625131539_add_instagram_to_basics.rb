class AddInstagramToBasics < ActiveRecord::Migration[7.2]
  def change
    add_column :basics, :instagram, :string
  end
end
