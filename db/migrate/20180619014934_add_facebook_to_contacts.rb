class AddFacebookToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :facebook, :string
  end
end
