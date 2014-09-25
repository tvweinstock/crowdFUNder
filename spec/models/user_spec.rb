require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory"
  it "requires a unique email"
  it "can have many owned projects"
  it "can have many donations"
  it "can have many rewards through donations"
  it "can have many backed projects through rewards"
  # pending "add some examples to (or delete) #{__FILE__}"
end
