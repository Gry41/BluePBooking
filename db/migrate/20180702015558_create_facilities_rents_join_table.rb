class CreateFacilitiesRentsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :facilities, :rents do |t|
      t.index :facility_id
      t.index :rent_id
    end
  end
end
