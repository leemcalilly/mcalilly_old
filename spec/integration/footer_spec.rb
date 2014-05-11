require 'spec_helper'

describe "Navigation" do
  before(:each) do
    visit '/'
  end

  it "has the right content" do
    within("#footer") do
      page.should have_content("Lee McAlilly")
      page.should have_content("Copyright")
      page.should have_content("1983")
    end
  end

  it "has the right links" do
    within("#footer") do
      page.should have_link("email")
      page.should have_link("Twitter")
      page.should have_link("Instagram")
      page.should have_link("Original Fuzz")
      page.should have_link("resume")
      page.should have_link("timeline")
    end
  end

end
