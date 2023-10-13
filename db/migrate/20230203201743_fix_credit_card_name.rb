class FixCreditCardName < ActiveRecord::Migration[7.0]
  def change
    rename_column :credit_cards, :card_number_string, :card_number
  end
end
