class CreateLanguageTourJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :languages, :tours do |t|
      t.index :language_id
      t.index :tour_id
    end  
  end
end
