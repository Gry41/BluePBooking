class TourPhoto < ApplicationRecord
    has_attached_file :image,
    path: ":rails_root/public/images/tour_photo/:id/:filename",
    url: "/images/tour_photo/:id/:filename",
    styles: {large: "640x480!"}
  
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
