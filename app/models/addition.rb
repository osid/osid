class Addition < ActiveRecord::Base
  belongs_to :user
  belongs_to :incident
  has_many :sources 
  
  def self.search(search, page)
        paginate :per_page => 3, :page => page,
           :conditions => ['name like ?', "%#{search}%"],
           :order => 'name'
  end
end
