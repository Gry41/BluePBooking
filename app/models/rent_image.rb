class RentImage < ApplicationRecord
  belongs_to :rent

  has_attached_file :image,
  path: ":rails_root/public/images/rent_photo/:id/:filename",
  url: "/images/rent_photo/:id/:filename"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
