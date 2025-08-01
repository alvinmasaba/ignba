class CreateContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :contracts do |t|
      t.references :player, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.references :start_season, null: false, foreign_key: { to_table: :seasons }
      t.references :end_season, null: false, foreign_key: { to_table: :seasons }

      t.timestamps
    end
  end
end
