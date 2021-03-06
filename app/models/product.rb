class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :image_url
  validates_numericality_of :price

  def price=(input)
    input.delete!("$")
    super
  end
end
