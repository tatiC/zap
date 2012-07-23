class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.column :link, :string
      t.column :description, :text
      
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end