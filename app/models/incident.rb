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
  
  def self.search(name, pvname, target_id, attacker_id)
    if name && name.present?
      where('name LIKE ?', "%#{name}%")
    elsif pvname && pvname.present?
      where('pvname LIKE ?', "%#{pvname}%")
    elsif target_id && target_id[:target_id].present?
      where('target_id = ?', target_id[:target_id])
    elsif attacker_id && attacker_id[:attacker_id].present?
      where('attacker_id = ?', attacker_id[:attacker_id])
    else
      scoped
    end
  end

end