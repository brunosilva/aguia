class CreateBasics < ActiveRecord::Migration[7.2]
  def change
    create_table :basics do |t|
      t.string :name
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :postal
      t.string :city
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
