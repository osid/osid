require 'spec_helper'

describe IncidentsController do
  render_views

  describe "access control" do
    
    it "should deny access to 'edit'" do
      get 'edit'
      response.should redirect_to(signin_path)
    end
        
    it "should permit access to 'index'" do
      get 'index'
      response.should be_success
    end
      
    it "should permit access to 'new'" do
      get 'new'
      response.should be_success
    end
    
    #TODO: this test fails...
    it "should permit access to 'create'" do
      post 'create'
      response.should be_success
    end
  
  end
  
    
end
