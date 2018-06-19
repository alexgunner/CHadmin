class AddMisionToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :mission, :text
    add_column :contacts, :vision, :text
  end
end
