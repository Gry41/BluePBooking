class TaxiPhoto < ApplicationRecord
    has_attached_file :image,
  path: ":rails_root/public/images/taxi_photo/:id/:filename",
  url: "/images/taxi_photo/:id/:filename"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
