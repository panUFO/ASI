require 'test_helper'

class ChampionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @champion = champions(:one)
  end

  test "should get index" do
    get champions_url
    assert_response :success
  end

  test "should get new" do
    get new_champion_url
    assert_response :success
  end

  test "should create champion" do
    assert_difference('Champion.count') do
      post champions_url, params: { champion: { cena: @champion.cena, nazwa: @champion.nazwa, typ: @champion.typ } }
    end

    assert_redirected_to champion_path(Champion.last)
  end

  test "should show champion" do
    get champion_url(@champion)
    assert_response :success
  end

  test "should get edit" do
    get edit_champion_url(@champion)
    assert_response :success
  end

  test "should update champion" do
    patch champion_url(@champion), params: { champion: { cena: @champion.cena, nazwa: @champion.nazwa, typ: @champion.typ } }
    assert_redirected_to champion_path(@champion)
  end

  test "should destroy champion" do
    assert_difference('Champion.count', -1) do
      delete champion_url(@champion)
    end

    assert_redirected_to champions_path
  end
end
