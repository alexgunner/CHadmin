class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.references :bus, foreign_key: true
      t.references :destination, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
