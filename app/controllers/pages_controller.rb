class PagesController < ApplicationController
  before_filter :authenticate, :only => :admin
  before_filter :admin_user, :only => :admin
  
  def home
    @title = "Home"
    
    @blogposts = Blogpost.find(:all, :order => "created_at DESC", :limit => 5)
    
    @incidents_count = Incident.count
    
    @incidents_latest = Incident.find(:first, :order => "created_at DESC")
    
    @events_count = Event.count
    
    @events_latest = Event.find(:first, :order => "created_at DESC")
    
    @sources_count = Source.count
    
    @sources_latest = Source.find(:first, :order => "created_at DESC")
    
    @users_count = User.count - 1
    
    @users_latest = User.find(:first, :order => "created_at DESC")
  end
  
  def news
    @title = "News"
    @blogposts = Blogpost.search(params[:search], params[:page])
  end
  
  def admin
    @title = "Admin"
    
    @users_count = User.count
    latest = User.find(:first, :order => "created_at DESC")
    @users_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @blogposts_count =Blogpost.count
    latest = Blogpost.find(:first, :order => "created_at DESC")
    @blogposts_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @incidents_count = Incident.count
    latest = Incident.find(:first, :order => "created_at DESC")
    @incidents_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @events_count = Event.count
    latest = Event.find(:first, :order => "created_at DESC")
    @events_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @sources_count = Source.count
    latest = Source.find(:first, :order => "created_at DESC")
    @sources_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @targets_count = Target.count
    latest = Target.find(:first, :order => "created_at DESC")
    @targets_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @attackers_count = Attacker.count
    latest = Attacker.find(:first, :order => "created_at DESC")
    @attackers_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @attack_count = Attack.count
    latest = Attack.find(:first, :order => "created_at DESC")
    @attack_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @pvsector_count = Pvsector.count
    latest = Pvsector.find(:first, :order => "created_at DESC")
    @pvsector_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @svsector_count = Svsector.count
    latest = Svsector.find(:first, :order => "created_at DESC")
    @svsector_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
    @country_count = Country.count
    latest = Country.find(:first, :order => "created_at DESC")
    @country_latest = latest.created_at.strftime("%Y-%m-%d") if latest
    
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
