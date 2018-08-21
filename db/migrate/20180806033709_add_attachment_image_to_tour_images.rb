class AddAttachmentImageToTourImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tour_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tour_images, :image
  end
end
