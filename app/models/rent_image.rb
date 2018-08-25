class RentImage < ApplicationRecord
  belongs_to :rent

  has_attached_file :image,
  path: ":rails_root/public/images/:id/:filename",
  url: "/images/:id/:filename"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
