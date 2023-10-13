class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :transaction_number
      t.integer :quantity
      t.decimal :total_cost
      t.integer :user_id
      t.integer :product_id
      t.integer :creditcard_id

      t.timestamps
    end
  end
end
