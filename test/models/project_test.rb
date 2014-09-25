require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
	test "project should not save without a name" do
		# project = Project.new(
		# {:name => '', :description => 'The best in the world', :goal => 4500, :start_date => Date.today, :end_date => Date.today + 6.months, :user_id => 1}
		# )
		project = projects(:two)
		assert_not project.save, 'Saved the project without a name.'
	end 

	test "project should always have a creator" do
	end

	test "project should always have a start date" do
	end 

	test "project should always have an end date" do
	end 

	test "project start date should not come after end date" do
	end 

	test "project start date should not be in the past" do
	end 

	test "project should calculate total donations" do 
		project = projects(:one)

		total = project.current_funding
		assert_equal 550, total, 'Calculated the total incorrectly'

	end

end
