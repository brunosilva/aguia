class CreateAbouts < ActiveRecord::Migration[7.2]
  def change
    create_table :abouts do |t|
      t.text :mission
      t.text :vision
      t.text :values

      t.timestamps
    end
  end
end
