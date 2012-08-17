class Incident < ActiveRecord::Base
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
  
end