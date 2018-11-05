require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:regular_user)
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.first_name = "Example Name "
    assert @user.valid?
  end

  test "last name should be present" do
    @user.last_name = "Example Name "
    assert @user.valid?
  end

  test "email can't be empty" do
    @user.email = ""
    refute @user.valid?
  end

  test "email can't be blank" do
    @user.email = "       "
    refute @user.valid?
  end

  test 'first name cant be empty' do
    @user.first_name = ""
    refute @user.valid?
  end

  test 'first name cant be blank' do
    @user.first_name = "        "
    refute @user.valid?
  end

  test 'last name cant be empty' do
    @user.last_name = ""
    refute @user.valid?
  end

  test 'last name cant be blank' do
    @user.last_name = "     "
    refute @user.valid?
  end

  test 'email must be unique' do
    duplicate_email = @user.dup
    refute duplicate_email.valid?
  end

end
