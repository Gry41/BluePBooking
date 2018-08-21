class CreateLanguagesRentsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :languages, :rents do |t|
      t.index :language_id
      t.index :rent_id
    end
  end
end
