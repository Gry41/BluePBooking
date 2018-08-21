class CreateRentImages < ActiveRecord::Migration[5.1]
  def change
    create_table :rent_images do |t|
      t.references :rent, foreign_key: true

      t.timestamps
    end
  end
end
