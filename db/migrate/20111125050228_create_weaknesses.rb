class CreateWeaknesses < ActiveRecord::Migration
  def self.up
    create_table :weaknesses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :weaknesses
  end
end
