require 'spec_helper'

describe "Cars" do
  describe "Cars list" do
    it "should have the correct title" do
      visit '/cars'
      page.should have_content('List of Cars')
    end
  end
end
