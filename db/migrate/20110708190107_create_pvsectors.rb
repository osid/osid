class CreatePvsectors < ActiveRecord::Migration
  def self.up
    create_table :pvsectors do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :pvsectors
  end
end
