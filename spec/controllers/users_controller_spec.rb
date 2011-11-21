require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'show'" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
  end
  
  describe "POST 'create'" do

    describe "failure" do

      before(:each) do
        @attr = { :name => "", :email => "", :password => "",
                  :password_confirmation => "" }
      end

      it "should not create a user" do
        lambda do
          post :create, :user => @attr
        end.should_not change(User, :count)
      end

      it "should have the right title" do
        post :create, :user => @attr
        response.should have_selector("title", :content => "Sign up")
      end

      it "should render the 'new' page" do
        post :create, :user => @attr
        response.should render_template('new')
      end
    end
  end

  describe "access control" do

    it "should deny access to 'index'" do
      get 'index'
      response.should redirect_to(signin_path)
    end

    it "should deny access to 'show'" do
      get 'show'
      response.should redirect_to(signin_path)
    end
    
    it "should deny access to 'edit'" do
      get 'edit'
      response.should redirect_to(signin_path)
    end
    
    it "should deny access to 'update'" do
      get 'update'
      response.should redirect_to(signin_path)
    end
    
    it "should deny access to 'destroy'" do
      get 'destroy'
      response.should redirect_to(signin_path)
    end
    
    it "should deny access to 'deactivate'" do
      get 'deactivate'
      response.should redirect_to(signin_path)
    end
      
    it "should permit access to 'new'" do
      get 'new'
      response.should be_success
    end
    
    it "should permit access to 'create'" do
      get 'create'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "OSID, the Open Security Incident Database | Sign Up")
    end
    
  
  end
  
    
end
