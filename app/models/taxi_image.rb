class TaxiImage < ApplicationRecord
  belongs_to :taxi_sevice

  has_attached_file :image,
  path: ":rails_root/public/images/taxi_image/:id/:filename",
  url: "/images/taxi_image/:id/:filename",
  styles: {large: "640x480!"}

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
