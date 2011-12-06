class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.string :name
      t.text :summary
      t.string :publisher
      t.integer :media
      t.date :publishingdate
      t.integer :user_id
      t.integer :event_id
      t.string :reference
      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
