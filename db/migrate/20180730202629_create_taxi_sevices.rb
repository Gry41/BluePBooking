class CreateTaxiSevices < ActiveRecord::Migration[5.1]
  def change
    create_table :taxi_sevices do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
