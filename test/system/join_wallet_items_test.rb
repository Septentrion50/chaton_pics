require "application_system_test_case"

class JoinWalletItemsTest < ApplicationSystemTestCase
  setup do
    @join_wallet_item = join_wallet_items(:one)
  end

  test "visiting the index" do
    visit join_wallet_items_url
    assert_selector "h1", text: "Join Wallet Items"
  end

  test "creating a Join wallet item" do
    visit join_wallet_items_url
    click_on "New Join Wallet Item"

    fill_in "Kitten", with: @join_wallet_item.kitten_id
    fill_in "Quantity", with: @join_wallet_item.quantity
    fill_in "Wallet", with: @join_wallet_item.wallet_id
    click_on "Create Join wallet item"

    assert_text "Join wallet item was successfully created"
    click_on "Back"
  end

  test "updating a Join wallet item" do
    visit join_wallet_items_url
    click_on "Edit", match: :first

    fill_in "Kitten", with: @join_wallet_item.kitten_id
    fill_in "Quantity", with: @join_wallet_item.quantity
    fill_in "Wallet", with: @join_wallet_item.wallet_id
    click_on "Update Join wallet item"

    assert_text "Join wallet item was successfully updated"
    click_on "Back"
  end

  test "destroying a Join wallet item" do
    visit join_wallet_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Join wallet item was successfully destroyed"
  end
end
