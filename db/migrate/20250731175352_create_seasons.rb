class CreateSeasons < ActiveRecord::Migration[8.0]
  def change
    create_table :seasons do |t|
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
