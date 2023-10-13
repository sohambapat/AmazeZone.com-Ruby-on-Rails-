class RemoveIdsFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :user_id, :integer
    remove_column :transactions, :product_id, :integer
    remove_column :transactions, :creditcard_id, :integer
  end
end
