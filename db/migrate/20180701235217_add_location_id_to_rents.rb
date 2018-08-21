class AddLocationIdToRents < ActiveRecord::Migration[5.1]
  def change
    add_column :rents, :location_id, :integer
    add_index :rents, :location_id
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
