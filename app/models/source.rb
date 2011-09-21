class Source < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  
    def self.search(search, page)
        paginate :per_page => 3, :page => page,
           :conditions => ['name like ?', "%#{search}%"],
           :order => 'name'
  end
  
end