class CreateManagers < ActiveRecord::Migration[8.0]
  def change
    create_table :managers do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :approved
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
