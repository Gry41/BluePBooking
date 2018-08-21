class CreateServicesRentsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :services, :rents do |t|
      t.index :service_id
      t.index :rent_id
    end
  end
end
