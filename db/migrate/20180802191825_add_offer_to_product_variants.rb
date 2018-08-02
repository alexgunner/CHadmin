class AddOfferToProductVariants < ActiveRecord::Migration[5.1]
  def change
    add_column :product_variants, :offer, :boolean
    add_column :product_variants, :offer_price, :float
  end
end
