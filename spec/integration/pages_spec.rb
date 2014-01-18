require 'spec_helper'

describe "Public" do    
  
  describe "Home" do
    
    it "renders the home page" do
      visit '/'
      page.status_code.should be(200)
    end
    
    it "has the right content" do
      visit '/'
      page.should have_content("Lee McAlilly")
    end
    
    it "has the right title" do
      visit '/'
      page.should have_title("Lee McAlilly")
    end
    
    it "has the right body class" do
      visit '/'
      page.should have_css('body.public')
    end

    it "has the right body id" do
      visit '/'
      page.should have_css('body#home')
    end
    
  end

end