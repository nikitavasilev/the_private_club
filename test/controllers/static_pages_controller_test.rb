require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:regular_user)
  end

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_response :success
  end

  test 'not show member without log' do
    get root_path
    assert_select 'a[href=?]', club_path, count:0
  end

  # Test not show profil and edit without log in or sign up
  test 'not show edit without log' do
    get root_path
    assert_select 'a[href=?]', edit_user_registration_path, count: 0
  end

  test "show a register and a login link when not logged" do
    get root_path
    assert_select "a[href=?]", club_path, count: 0
    assert_select "a[href=?]", new_user_registration_path
    assert_select "a[href=?]", user_session_path
  end

  #Test views Log in + Private links (members, edit, profile)
  test "login with valid information" do
    if user_session_path
      get root_path
      assert_select "a[href=?]", user_session_path, count: 2     #navbar login
      assert_select "a[href=?]", new_user_registration_path, count: 1    #navbar Sign up
      assert_select "a[href=?]", club_path, count: 0   #Members list
      assert_select "a[href=?]", edit_user_registration_path, count: 0   #navbar Edit
      assert_select "a[href=?]", destroy_user_session_path, count: 0    #navbar
    end
  end

  test "not show members while not logged in" do
    get club_path
    assert_select "div" do
      assert_select 'user.id', 0
    end
  end

end
