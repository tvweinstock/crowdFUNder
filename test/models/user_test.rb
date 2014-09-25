require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save a new user without a password" do
    user = User.new
    assert_not user.save, "Saved the user without a password"
  end
end
