require "application_system_test_case"

class CreditCardsTest < ApplicationSystemTestCase
  setup do
    @credit_card = credit_cards(:one)
  end

  test "visiting the index" do
    visit credit_cards_url
    assert_selector "h1", text: "Credit cards"
  end

  test "should create credit card" do
    visit credit_cards_url
    click_on "New credit card"

    fill_in "Card number string", with: @credit_card.card_number_string
    fill_in "Created at", with: @credit_card.created_at
    fill_in "Cvv", with: @credit_card.cvv
    fill_in "Expiration date", with: @credit_card.expiration_date
    fill_in "Id", with: @credit_card.id
    fill_in "Name", with: @credit_card.name
    fill_in "Updated at", with: @credit_card.updated_at
    fill_in "User", with: @credit_card.user_id
    click_on "Create Credit card"

    assert_text "Credit card was successfully created"
    click_on "Back"
  end

  test "should update Credit card" do
    visit credit_card_url(@credit_card)
    click_on "Edit this credit card", match: :first

    fill_in "Card number string", with: @credit_card.card_number_string
    fill_in "Created at", with: @credit_card.created_at
    fill_in "Cvv", with: @credit_card.cvv
    fill_in "Expiration date", with: @credit_card.expiration_date
    fill_in "Id", with: @credit_card.id
    fill_in "Name", with: @credit_card.name
    fill_in "Updated at", with: @credit_card.updated_at
    fill_in "User", with: @credit_card.user_id
    click_on "Update Credit card"

    assert_text "Credit card was successfully updated"
    click_on "Back"
  end

  test "should destroy Credit card" do
    visit credit_card_url(@credit_card)
    click_on "Destroy this credit card", match: :first

    assert_text "Credit card was successfully destroyed"
  end
end
