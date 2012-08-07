class Blogpost < ActiveRecord::Base
  require 'open-uri'
  belongs_to :user
  
  def tweet!
    message = header
    #TODO: hard coded URL!!
    url = "http://localhost:3000/blogposts/#{self.id}"
    
    shrunk_url = Blogpost.tiny_url(url)
    
    logger.debug "Message "+message+" lengt: "+message.length.to_s
    logger.debug "URL "+url+" lengt: "+url.length.to_s
    
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
  
  def self.search(search, page)
        paginate :per_page => 6, :page => page,
           :conditions => ['header like ?', "%#{search}%"],
           :order => 'created_at DESC'
  end
end
