class CreateProducts < ActiveRecord::Migration
  attr_accessor :title, :price, :description, :image_url
  def self.up
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 8, :scale => 2
      t.text :description
      t.string :image_url
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
