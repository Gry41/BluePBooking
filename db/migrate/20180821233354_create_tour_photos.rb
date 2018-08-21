class CreateTourPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_photos do |t|

      t.timestamps
    end
  end
end
