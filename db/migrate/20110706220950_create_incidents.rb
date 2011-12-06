class CreateIncidents < ActiveRecord::Migration
  def self.up
    create_table :incidents do |t|
      t.string :name
      t.date :firstseen
      t.integer :user_id
      t.text :summary
      t.string :pvname
      t.integer :pvsector_id
      t.string :svname
      t.integer :svsector_id
      t.string :attackerdescription
      t.integer :attacker_id
      t.string :attackdescription
      t.integer :attack_id
      t.string :targetdescription
      t.integer :target_id
      t.integer :country_id
   
      t.timestamps
    end     
  end

  def self.down
    drop_table :incidents
  end
end
