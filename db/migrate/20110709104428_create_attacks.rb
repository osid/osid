class CreateAttacks < ActiveRecord::Migration
  def self.up
    create_table :attacks do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :attacks
  end
end
