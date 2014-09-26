class DonationsController < ApplicationController

  def create
  	@donation = Donation.new(donation_params)
  	@donation.user_id = current_user.id
  	@project = @donation.project
  	if @donation.save
  		redirect_to project_url(@project)
  	else
  		render "/projects/show"
  	end
  end

  private

  def donation_params
  	params.require(:donation).permit(:reward_id, :amount)
  end

end
