class AddAboutusToAbout < ActiveRecord::Migration[7.2]
  def change
    add_column :abouts, :aboutus, :text
  end
end
