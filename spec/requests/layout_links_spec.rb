require 'spec_helper'

describe "LayoutLinks" do
   
  describe "GET /layout_links" do

      it "should have a Home page at '/'" do
        get '/'
        response.should have_selector('title', :content => "OSID, the Open Security Incident Database | Home")
      end

      it "should have ab About page at '/about'" do
        get '/about'
        response.should have_selector('title', :content => "OSID, the Open Security Incident Database | About")
      end

      it "should have a Contact page at '/contact'" do
        get '/contact'
        response.should have_selector('title', :content => "OSID, the Open Security Incident Database | Contact")
      end
    
      it "should have a Privacy page at '/privacy'" do
        get '/privacy'
        response.should have_selector('title', :content => "OSID, the Open Security Incident Database | Privacy")
      end
    
  end
end
