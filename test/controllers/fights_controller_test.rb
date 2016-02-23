require 'test_helper'

class FightsControllerTest < ActionController::TestCase

  setup do
	@user1 = users(:anakin)
	@user2 = users(:obiwan)
  end
  
  test "should get index" do
    get :index
    assert_response :success 
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fight" do
    assert_difference('Fight.count') do
      post :create, fight: {user1: @user1.id, user2: @user2.id  }, format: :js
	
    end
  end



end
