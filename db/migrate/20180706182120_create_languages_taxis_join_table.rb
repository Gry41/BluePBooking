class CreateLanguagesTaxisJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :languages, :taxis do |t|
      t.index :language_id
      t.index :taxi_id
    end  
  end
end
