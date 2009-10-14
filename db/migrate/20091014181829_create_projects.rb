class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title
      t.text :teaser
      t.text :body
      t.string :icon_url
      t.string :source_url
      t.boolean :is_featured
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
