xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "News"
    xml.description "OSID News"
    xml.link blogposts_url(:rss)
    
    @blogposts.each do |blog|       
      xml.item do
        xml.title blog.header
        xml.description blog.content
        xml.pubDate blog.created_at.to_s(:rfc822)
        xml.link blogposts_url(blog, :rss)
        xml.guid blogposts_url(blog, :rss)
      end
    end
  end
end