class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident
  has_many :sources, :dependent => :destroy 
  
  def self.search(search, page)
        paginate :per_page => 3, :page => page,
           :conditions => ['name like ?', "%#{search}%"],
           :order => 'name'
  end
end
