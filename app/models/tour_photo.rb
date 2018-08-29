class TourPhoto < ApplicationRecord
    has_attached_file :image,
    :storage => :cloudinary,
    :path => 'tour/:id/:filename'
   
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
