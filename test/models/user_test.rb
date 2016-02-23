require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end





 def setup
    @user = User.new(first_name: "Example", last_name: "User",
                     midichlorians: 2, level: 2, lightsaber: 2, force: "Dark")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "first name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

test "last name should be present" do
    @user.last_name = "     "
    assert_not @user.valid?
  end
  
  test "midichlorians should be present" do
    @user.midichlorians = "     "
    assert_not @user.valid?
  end
  
  test "level should be present" do
    @user.level = "     "
    assert_not @user.valid?
  end
  
    test "lightsaber should be present" do
    @user.lightsaber = "     "
    assert_not @user.valid?
  end
  
    test "force should be present" do
    @user.force = "     "
    assert_not @user.valid?
  end

  test "first name should not be too long" do
    @user.first_name = "a" * 51
    assert_not @user.valid?
  end
  
  test "last name should not be too long" do
    @user.last_name = "a" * 51
    assert_not @user.valid?
  end

   test "description should not be too long" do
    @user.description = "a" * 141
    assert_not @user.valid?
  end
  


  
  
end