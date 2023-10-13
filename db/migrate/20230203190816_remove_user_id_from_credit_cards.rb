class RemoveUserIdFromCreditCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :credit_cards, :user_id, :integer
  end
end
