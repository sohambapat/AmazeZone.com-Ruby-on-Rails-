class AddKeysToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :user, null: false, foreign_key: true
    add_reference :transactions, :product, null: false, foreign_key: true
    add_reference :transactions, :credit_card, null: false, foreign_key: true
  end
end
