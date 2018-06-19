class CreateManufacturers < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :email
      t.string :phone
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
