class AddAttachmentImageToTourPhotos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tour_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tour_photos, :image
  end
end
