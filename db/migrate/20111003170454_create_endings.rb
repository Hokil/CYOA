class CreateEndings < ActiveRecord::Migration
  def self.up
    create_table :endings do |t|
      t.string :title
      t.references :choices
      
      t.timestamps
    end
  end

  def self.down
    drop_table :endings
  end
end
