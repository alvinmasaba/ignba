class CreateContractYears < ActiveRecord::Migration[8.0]
  def change
    create_table :contract_years do |t|
      t.references :contract, null: false, foreign_key: true
      t.references :season, null: false, foreign_key: true
      t.integer :amount
      t.boolean :waived, default: false
      t.boolean :two_way, default: false
      t.string :option_type

      t.timestamps
    end
  end
end
