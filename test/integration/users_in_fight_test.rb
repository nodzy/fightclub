require 'test_helper'

class UsersInFightTest < ActionDispatch::IntegrationTest
 def setup
    @user1     = users(:anakin)
	@user2     = users(:obiwan)
	@user3     = users(:random)
    
  end
  
   test "fight" do
    get root_path
    assert_template 'users/index'
    
    assert_difference '@user1.fights.where(winner: @user1.id).count', 1 do
    post fights_path, fight: {user1: @user1.id, user2: @user2.id  }, format: :js
	end
	assert_equal Fight.last.winner, @user1.id.to_s

  end
  
  test "the same user" do
  get root_path
    assert_template 'users/index'
    
    assert_no_difference 'Fight.count' do
    post fights_path, fight: {user1: @user1.id, user2: @user1.id  }, format: :js
	end
	end

   test "users show page" do
   
   
    get user_path(@user1)
    assert_template 'users/show'
	
	
	assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", new_user_path, count: 0
	 get root_path
    assert_template 'users/index'
	assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", new_user_path, count: 1
	 assert_equal @user1.fights.count, 0
       assert_difference '@user1.fights.count', 1 do
    post fights_path, fight: {user1: @user1.id, user2: @user2.id  }, format: :js
	end
    

  end

  
  test "draw" do
   
   get root_path
    assert_template 'users/index'
    
	
	 assert_difference ['@user2.fights.count','@user3.fights.count'], 1 do
    post fights_path, fight: {user1: @user2.id, user2: @user3.id  }, format: :js
	end

   	 assert_no_difference ['@user2.fights.where(winner: @user2.id).count', '@user3.fights.where(winner: @user3.id).count'] do
    post fights_path, fight: {user1: @user2.id, user2: @user3.id  }, format: :js
	end

   
   
end
end


