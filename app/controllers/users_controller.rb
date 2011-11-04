class UsersController < ApplicationController
  before_filter :authenticate, :except => [ :new, :create]
  before_filter :correct_user, :only => [:edit, :update, :deactivate, :show]
  before_filter :admin_user, :only => [:index, :destroy]
  
  # GET /users
  # GET /users.xml
  def index
    #@users = User.all
    
    @users = User.search(params[:search], params[:page])
    
    @title = "User"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    
    @title = "User Details"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    
    @title = "Sign Up"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.active = true
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success => "Welcome to the Sample App!" }
    else
      @title = "Sign up"
      render 'new'
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
    def update
    if @user.update_attributes(params[:user])
      redirect_to @user, :flash => { :success => "Profile updated." }
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user.destroy
    redirect_to users_path, :flash => { :success => "User destroyed." }
  end
  
  def deactivate
    @user = User.find(params[:id])
    @user.active = false
  end 
  
private
  def correct_user
      @user = User.find(params[:id])      
      redirect_to(root_path) unless current_user?(@user) || current_user.admin?
  end
    
  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

    def authenticate
      deny_access unless signed_in?
    end
end
