class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :discord_id
      t.string :username
      t.string :avatar
      t.boolean :admin

      t.timestamps
    end
  end
end
