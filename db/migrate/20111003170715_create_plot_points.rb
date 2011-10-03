class CreatePlotPoints < ActiveRecord::Migration
  def self.up
    create_table :plot_points do |t|
      t.title
      t.references :choices

      t.timestamps
    end
  end

  def self.down
    drop_table :plot_points
  end
end
