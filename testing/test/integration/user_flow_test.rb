require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest

	test "when user login" do
		get "/users/sign_in"
		post "/users/sign_in", params: { user: { email: users(:daniel).email, password: '123456' } }
		follow_redirect!
	end

end