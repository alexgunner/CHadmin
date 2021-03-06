class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :reference_code
      t.references :measure_unit, foreign_key: true
      t.references :category, foreign_key: true
      t.references :subcategory, foreign_key: true
      t.references :provider, foreign_key: true
      t.references :manufacturer, foreign_key: true

      t.timestamps
    end
  end
end
