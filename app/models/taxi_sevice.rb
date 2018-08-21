class TaxiSevice < ApplicationRecord
    has_many :taxi_images, dependent: :destroy
    accepts_nested_attributes_for :taxi_images
end
