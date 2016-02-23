require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

 def setup
    @user1     = users(:anakin)
	 @user2     = users(:obiwan)
    
  end
  
   test "layout links" do
    get root_path
    assert_template 'users/index'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", new_user_path

  end







  test "index including pagination" do
   
    get root_path
    assert_template 'users/index'
 
    first_page_of_users = User.paginate(page: 1)
    first_page_of_users.each do |user|
      assert_select 'a[href=?]', user_path(user), text: 'Show'
		assert_select 'a[href=?]', edit_user_path(user), text: 'Edit'
		assert_select 'a[href=?]', user_path(user), text: 'Destroy'
      end
    
    assert_difference 'User.count', -1 do
      delete user_path(@user2)
    end
  end
end