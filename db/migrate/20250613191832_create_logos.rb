class CreateLogos < ActiveRecord::Migration[7.2]
  def change
    create_table :logos do |t|
      t.string :name

      t.timestamps
    end
  end
end
