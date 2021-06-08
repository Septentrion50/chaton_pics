require 'test_helper'

class JoinWalletItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_wallet_item = join_wallet_items(:one)
  end

  test "should get index" do
    get join_wallet_items_url
    assert_response :success
  end

  test "should get new" do
    get new_join_wallet_item_url
    assert_response :success
  end

  test "should create join_wallet_item" do
    assert_difference('JoinWalletItem.count') do
      post join_wallet_items_url, params: { join_wallet_item: { kitten_id: @join_wallet_item.kitten_id, quantity: @join_wallet_item.quantity, wallet_id: @join_wallet_item.wallet_id } }
    end

    assert_redirected_to join_wallet_item_url(JoinWalletItem.last)
  end

  test "should show join_wallet_item" do
    get join_wallet_item_url(@join_wallet_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_wallet_item_url(@join_wallet_item)
    assert_response :success
  end

  test "should update join_wallet_item" do
    patch join_wallet_item_url(@join_wallet_item), params: { join_wallet_item: { kitten_id: @join_wallet_item.kitten_id, quantity: @join_wallet_item.quantity, wallet_id: @join_wallet_item.wallet_id } }
    assert_redirected_to join_wallet_item_url(@join_wallet_item)
  end

  test "should destroy join_wallet_item" do
    assert_difference('JoinWalletItem.count', -1) do
      delete join_wallet_item_url(@join_wallet_item)
    end

    assert_redirected_to join_wallet_items_url
  end
end
