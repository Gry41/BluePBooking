class TourService < ApplicationRecord
    has_many :tour_images, dependent: :destroy
    accepts_nested_attributes_for :tour_images
end
