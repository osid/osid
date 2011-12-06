class AddWeaknessdescriptionToIncidents < ActiveRecord::Migration
  def self.up
    add_column :incidents, :weaknessdescription, :string
  end

  def self.down
    remove_column :incidents, :weaknessdescription
  end
end
