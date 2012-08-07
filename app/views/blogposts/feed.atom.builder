atom_feed :language => 'en-US' do |feed|
  feed.title @title
  feed.updated @updated

  @blogposts.each do |item|
    
      next if item.updated_at.blank?

      feed.entry( item ) do |entry|
        #entry.url news_item_url(item)
        entry.title item.header
        entry.content item.content, :type => 'html'

        # the strftime is needed to work with Google Reader.
        entry.updated(item.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) 

        #entry.author do |author|
        #  author.name entry.author_name)
        #end
      end
    end
end