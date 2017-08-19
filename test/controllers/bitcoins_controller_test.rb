require 'test_helper'

class BitcoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bitcoin = bitcoins(:one)
  end

  test "should get index" do
    get bitcoins_url
    assert_response :success
  end

  test "should get new" do
    get new_bitcoin_url
    assert_response :success
  end

  test "should create bitcoin" do
    assert_difference('Bitcoin.count') do
      post bitcoins_url, params: { bitcoin: { bitcoinnumber: @bitcoin.bitcoinnumber, cardamount: @bitcoin.cardamount, number: @bitcoin.number, terms: @bitcoin.terms, user_id: @bitcoin.user_id } }
    end

    assert_redirected_to bitcoin_url(Bitcoin.last)
  end

  test "should show bitcoin" do
    get bitcoin_url(@bitcoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_bitcoin_url(@bitcoin)
    assert_response :success
  end

  test "should update bitcoin" do
    patch bitcoin_url(@bitcoin), params: { bitcoin: { bitcoinnumber: @bitcoin.bitcoinnumber, cardamount: @bitcoin.cardamount, number: @bitcoin.number, terms: @bitcoin.terms, user_id: @bitcoin.user_id } }
    assert_redirected_to bitcoin_url(@bitcoin)
  end

  test "should destroy bitcoin" do
    assert_difference('Bitcoin.count', -1) do
      delete bitcoin_url(@bitcoin)
    end

    assert_redirected_to bitcoins_url
  end
end
