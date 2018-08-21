class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.string :name
      t.string :address
      t.integer :rooms
      t.integer :bathrooms
      t.decimal :dbl_price
      t.decimal :tpl_price
      t.string :qpl_price
      t.string :home
      t.decimal :X
      t.decimal :Y
      t.string :features
      t.boolean :tripadvisor

      t.timestamps
    end
  end
end
