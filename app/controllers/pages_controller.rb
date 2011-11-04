class PagesController < ApplicationController
  def home
    @title = "Home"
    
    @blogposts = Blogpost.find(:all, :order => "created_at DESC", :limit => 5)
    
    @incidents_count = Incident.count
    
    @incidents_latest = Incident.find(:first, :order => "created_at DESC")
    
    @events_count = Event.count
    
    @events_latest = Event.find(:first, :order => "created_at DESC")
    
    @sources_count = Source.count
    
    @sources_latest = Source.find(:first, :order => "created_at DESC")
    
    @users_count = User.count
    
    @users_latest = User.find(:first, :order => "created_at DESC")
  end
  
  def news
    @title = "News"
    @blogposts = Blogpost.search(params[:search], params[:page])
  end
  
  def admin
    @title = "Admin"
  end

  def about
    @title = "About"
  end
  
  def contact
    @title = "Contact"
  end
  
  def privacy
    @title = "Privacy"
  end
  
end
