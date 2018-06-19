class AddAttributesToProductVariants < ActiveRecord::Migration[5.1]
  def change
    add_column :product_variants, :description, :string
    add_column :product_variants, :reference_code, :string
  end
end
