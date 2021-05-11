class CreateBalanceCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :balance_criptomonedas do |t|
      t.string :token
      t.float :valor
      t.references :usuario, null: false, foreign_key: true
      t.references :criptomoneda_token, references: :criptomonedas, null: false
      t.timestamps
    end

    rename_column :balance_criptomonedas, :criptomoneda_token_id, :criptomoneda_token
    add_foreign_key :balance_criptomonedas, :criptomonedas, column: 'criptomoneda_token', primary_key: 'token'
  end
end
