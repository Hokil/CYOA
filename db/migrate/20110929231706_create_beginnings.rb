class CreateBeginnings < ActiveRecord::Migration
  def self.up
    create_table :beginnings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :beginnings
  end
end
