require 'spec_helper'

describe "Public" do

  describe "Home" do
    before(:each) do
      visit '/'
    end

    it "renders the home page" do
      page.status_code.should be(200)
    end

    it "has the right title" do
      page.should have_title("Lee McAlilly")
    end

    it "has the right body class" do
      page.should have_css('body.public')
    end

    it "has the right body id" do
      page.should have_css('body#home')
    end
  end

  describe "Resume" do
    before(:each) do
      visit '/resume'
    end

    it "renders the resume page" do
      page.status_code.should be(200)
    end

    it "has the right title" do
      page.should have_title("Resume • Lee McAlilly")
    end

    it "has the right body class" do
      page.should have_css('body.public')
    end

    it "has the right body id" do
      page.should have_css('body#resume')
    end

    it "has the right content" do
      page.should have_content("Experience")
      page.should have_content("Education")
      page.should have_content("Web Projects")
    end
  end

end
