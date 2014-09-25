require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "should not save a new user without a password" do
		user = User.new
		assert_not user.save, "Saved the user without a password"
	end

  	test "should not be able to have a password with less than 5 characters" do
  		user = User.new
  		
  	end

  	test "email should be unique" do 
	end

	test "user accounts should take their dependencies with them" do
	end

	test "on sign up a user should be auto-logged in" do
	end

end
