class AddFieldsToProductVariants < ActiveRecord::Migration[5.1]
  def change
    add_column :product_variants, :reposition, :boolean
    add_column :product_variants, :reposition_date, :date
  end
end
