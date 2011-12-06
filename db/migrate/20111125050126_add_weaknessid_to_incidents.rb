class AddWeaknessidToIncidents < ActiveRecord::Migration
  def self.up
    add_column :incidents, :weakness_id, :integer
  end

  def self.down
    remove_column :incidents, :weakness_id
  end
end
