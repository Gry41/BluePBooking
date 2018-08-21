class CreateTourImages < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_images do |t|
      t.references :tour_service, foreign_key: true

      t.timestamps
    end
  end
end
