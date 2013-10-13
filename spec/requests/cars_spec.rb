require 'spec_helper'

describe "Cars" do
	let!(:resouce) { FactoryGirl.create :car }

  describe "Cars list" do
    it "should have new car" do
      get '/cars'
      expect(response.body).to include('New Car')
    end
  end

  describe "Car view" do
  	it "should have correct car title" do
  		get '/cars/1'
  		expect(response.body).to include('Test Car 1')
  	end

  	it "should have the correct description" do
  		get '/cars/1'
  		expect(response.body).to include("Test Car 1&#39;s description.")
  	end
  end
end
