class AddVisitsFieldToRent < ActiveRecord::Migration[5.1]
  def change
    add_column :rents, :visits, :integer, :default => 0
    #Ex:- :default =>''
    add_index :rents, :visits
  end
end
