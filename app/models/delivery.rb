class Delivery < ApplicationRecord
  belongs_to :bus
  belongs_to :destination
end
