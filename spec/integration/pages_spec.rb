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
    
    it "has the right content" do
      page.should have_content("Look out honey cause I'm using technology.")
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
    
    it "has the right links" do
      page.should have_link("Email")
      page.should have_link("Github")
      page.should have_link("Twitter")
      page.should have_link("Instagram")
      page.should have_link("Original Fuzz")
    end
    
    it "has the right content" do
      page.should have_content("Experience")
      page.should have_content("Education")
      page.should have_content("Web Projects")
      page.should have_content("Contact")
    end
  end

end