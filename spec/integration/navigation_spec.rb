require 'spec_helper'

describe "Navigation" do
  before(:each) do
    visit '/'
  end
  
  it "has the right links" do
    page.should have_content("Projects")
    page.should have_content("Writing")
    page.should have_content("Music")
    page.should have_content("Photos")
    page.should have_content("Video")
  end
  
  it "has a working Projects link" do
    pending
  end
  
  it "has a working Writing link" do
    pending
  end
  
  it "has a working Music link" do
    pending
  end
  
  it "has a working Photos link" do
    pending
  end
  
  it "has a working Video link" do
    pending
  end
  
end