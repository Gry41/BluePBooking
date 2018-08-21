class AddAttachmentImageToTaxiPhotos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :taxi_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :taxi_photos, :image
  end
end
