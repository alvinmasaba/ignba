class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :height
      t.integer :weight
      t.date :birthdate
      t.integer :rating
      t.string :url

      t.timestamps
    end
  end
end
