require 'spec_helper'

describe "Cars" do
  describe "Cars list" do
    it "should have new car" do
      get '/cars'
      expect(response.body).to include('New Car')
    end
  end
end
