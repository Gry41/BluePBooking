class CreateTaxiImages < ActiveRecord::Migration[5.1]
  def change
    create_table :taxi_images do |t|
      t.references :taxi_sevice, foreign_key: true

      t.timestamps
    end
  end
end
