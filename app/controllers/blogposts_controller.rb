class BlogpostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show]
  before_filter :admin_user, :only => [:show, :edit, :destroy]
  
  # GET /blogposts
  # GET /blogposts.xml
  def index
    @blogposts = Blogpost.search(params[:search], params[:page])
    
    @title = "Blogposts"    

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogposts }
      format.rss  { render :layout => false }
    end
  end

  # GET /blogposts/1
  # GET /blogposts/1.xml
  def show
    @blogpost = Blogpost.find(params[:id])

    @title = "Blog Details"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blogpost }
    end
  end

  # GET /blogposts/new
  # GET /blogposts/new.xml
  def new
    @blogpost = Blogpost.new

    @title = "New Blogpost"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blogpost }
    end
  end

  # GET /blogposts/1/edit
  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  # POST /blogposts
  # POST /blogposts.xml
  def create
    @blogpost = Blogpost.new(params[:blogpost])
    
    
    if signed_in?
      @blogpost.user_id = current_user.id  
    else
      @blogpost.user_id = 1
    end

    respond_to do |format|
      if @blogpost.save
        format.html { redirect_to(@blogpost, :notice => 'Blogpost was successfully created.') }
        format.xml  { render :xml => @blogpost, :status => :created, :location => @blogpost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blogpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blogposts/1
  # PUT /blogposts/1.xml
  def update
    @blogpost = Blogpost.find(params[:id])

    respond_to do |format|
      if @blogpost.update_attributes(params[:blogpost])
        format.html { redirect_to(@blogpost, :notice => 'Blogpost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blogpost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blogposts/1
  # DELETE /blogposts/1.xml
  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy

    respond_to do |format|
      format.html { redirect_to(blogposts_url) }
      format.xml  { head :ok }
    end
  end
end
