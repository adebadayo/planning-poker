class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :auth_token

      t.timestamps
    end
    add_index :rooms, :auth_token, unique: true
  end
end
