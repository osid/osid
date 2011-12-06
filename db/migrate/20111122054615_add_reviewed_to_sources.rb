class AddReviewedToSources < ActiveRecord::Migration
  def self.up
    add_column :sources, :reviewed, :boolean
  end

  def self.down
    remove_column :sources, :reviewed
  end
end
