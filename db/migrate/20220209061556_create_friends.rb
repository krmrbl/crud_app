class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :riot_id
      t.string :discord
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
