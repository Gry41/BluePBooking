class CreateTourServices < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_services do |t|
      t.string :name
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
