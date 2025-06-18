class AddRepliedToContacts < ActiveRecord::Migration[7.2]
  def change
    add_column :contacts, :replied, :boolean
  end
end
