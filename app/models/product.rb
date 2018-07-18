class Product < ApplicationRecord
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/noimage.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  	
  belongs_to :measure_unit
  belongs_to :category
  belongs_to :subcategory
  belongs_to :provider
  belongs_to :manufacturer

  has_many :product_variants

  def in_offer
  	if self.offer
  		return "Sí"
  	else
  		return "No"
  	end
  end
end
