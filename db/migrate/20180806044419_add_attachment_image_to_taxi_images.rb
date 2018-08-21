class AddAttachmentImageToTaxiImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :taxi_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :taxi_images, :image
  end
end
