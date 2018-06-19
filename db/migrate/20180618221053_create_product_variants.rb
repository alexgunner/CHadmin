class CreateProductVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :product_variants do |t|
      t.string :variant_size
      t.float :price
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
