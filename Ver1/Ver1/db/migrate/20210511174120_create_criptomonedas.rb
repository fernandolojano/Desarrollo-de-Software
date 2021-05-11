class CreateCriptomonedas < ActiveRecord::Migration[6.1]
  def change
    create_table :criptomonedas, id: false, primary_key: :token do |t|
      t.primary_key :token
      t.string :nombre
      t.float :valor_actual

      t.timestamps
    end
  end
end
