class Incident < ActiveRecord::Base
  require 'open-uri'
  
  belongs_to :user
  belongs_to :pvsector
  belongs_to :svsector
  belongs_to :attacker
  belongs_to :attack
  belongs_to :target
  belongs_to :country
  belongs_to :weakness
  has_many :events, :dependent => :destroy
  
  validates :name,  :presence => true
  validates :summary,  :presence => true
  #validates :firstseen,  :presence => true
  
  attr_accessor           :create_blog
  #attr_accessible         :create_blog
  
  searchable do
    text :name, :summary, :pvname, :targetdescription, :firstseen_month
    time :firstseen
    string :name
    string :updated
    string :firstseen_month
  end
  
  def updated
    updated_at.strftime("%Y %m %d %H %M %S")
  end
  
  def firstseen_month
    firstseen.strftime("%B %Y")
  end
  
  def tweet!
    message = "New OSIDB-ID: " + self.id.to_s + " - " + name + " "
    #TODO: hard coded URL!!
    url = "http://www.osidb.org/incidents/#{self.id}"
    
    shrunk_url = Incident.tiny_url(url)
    
    len = shrunk_url.length
    
    if message.length > 134 - shrunk_url.length
          message = message[0...(134 - shrunk_url.length)] + '...'
    end

    tweet = "#{message} #{shrunk_url}"
    Twitter.update tweet
    #update_attribute(:tweeted_at, Time.now.utc)
  end
  
  def self.tiny_url(url)
    return url if url.length < 20
    string = "http://is.gd/api.php?longurl=" + CGI::escape(url)
    open(string).read.strip
  rescue StandardError => e
    puts "Error in tiny_url: #{e.message}\n#{e.backtrace}"
  end
  
end