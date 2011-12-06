class AddReviewedToIncidents < ActiveRecord::Migration
  def self.up
    add_column :incidents, :reviewed, :boolean
  end

  def self.down
    remove_column :incidents, :reviewed
  end
end
