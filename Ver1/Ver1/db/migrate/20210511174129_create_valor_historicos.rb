class CreateValorHistoricos < ActiveRecord::Migration[6.1]
  def change
    create_table :valor_historicos do |t|
      t.datetime :fecha
      t.float :valor
      t.references :criptomoneda_token, references: :criptomonedas, null: false

      t.timestamps
    end

    rename_column :valor_historicos, :criptomoneda_token_id, :criptomoneda_token
    add_foreign_key :valor_historicos, :criptomonedas, column: 'criptomoneda_token', primary_key: 'token'
  end
end
