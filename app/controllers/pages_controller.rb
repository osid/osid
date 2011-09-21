class PagesController < ApplicationController
  def home
    @title = "Welcome to OSID"
    
    @blogposts = Blogpost.find(:all, :order => "created_at DESC", :limit => 2)
    
    @incidents_count = Incident.count
    
    @incidents_latest = Incident.find(:first, :order => "created_at DESC")
    
    @events_count = Event.count
    
    @events_latest = Event.find(:first, :order => "created_at DESC")
    
    @sources_count = Source.count
    
    @sources_latest = Source.find(:first, :order => "created_at DESC")
    
    @users_count = User.count
    
    @users_latest = User.find(:first, :order => "created_at DESC")
    
  end
  
  def contribute
     @incident = Incident.new
  end  
  
  def news
    @blogposts = Blogpost.search(params[:search], params[:page])
  end
  
  def admin
  end

  def about
  end
  
  def contact
  end
  
  def privacy
  end
  
  def index
  end
end
