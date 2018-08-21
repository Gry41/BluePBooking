class AddAttachmentImageToRentImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :rent_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rent_images, :image
  end
end
