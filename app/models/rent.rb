class Rent < ApplicationRecord
    include ActionView::Helpers::TextHelper 
   has_and_belongs_to_many :facilities
   has_and_belongs_to_many :languages
   has_and_belongs_to_many :services
   belongs_to :location
   has_many :rent_images, dependent: :destroy
   accepts_nested_attributes_for :rent_images
#    has_many :objects, class_name: "object", foreign_key: "reference_id"
end