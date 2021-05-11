class CreateBalanceDivisas < ActiveRecord::Migration[6.1]
  def change
    create_table :balance_divisas do |t|
      t.string :token_divisa
      t.float :valor
      t.references :usuario, null: false, foreign_key: true
      t.references :divisa_token, references: :divisas, null: false

      t.timestamps
    end

    rename_column :balance_divisas, :divisa_token_id, :divisa_token
    add_foreign_key :balance_divisas, :divisas, column: 'divisa_token', primary_key: 'token_divisa'
  end
end
