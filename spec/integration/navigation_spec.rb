require 'spec_helper'

describe "Navigation" do
  before(:each) do
    visit '/'
  end

  it "has the right links" do
    page.should have_link("Projects")
    page.should have_link("Writing")
    page.should have_link("Music")
    page.should have_link("Photos")
    page.should have_link("Video")
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
