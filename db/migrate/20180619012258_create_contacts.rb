class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
