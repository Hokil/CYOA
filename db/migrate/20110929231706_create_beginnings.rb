class CreateBeginnings < ActiveRecord::Migration
  def self.up
    create_table :beginnings do |t|
      t.string :title
      t.references :stories
      t.references :choices

      t.timestamps
    end
  end

  def self.down
    drop_table :beginnings
  end
end
