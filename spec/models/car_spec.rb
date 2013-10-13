require 'spec_helper'

describe Car do
  before(:each) do
    @car = FactoryGirl.build(:car)
  end

  it "is valid with title and description" do
    @car.should be_valid
  end

  it "is not valid with an empty title" do
    @car.title = nil
    @car.should_not be_valid
  end

  it "is not valid with an empty description" do
    @car.description = nil
    @car.should_not be_valid
  end
end
