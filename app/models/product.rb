class Product < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :image_url, presence: true
  validates :description, presence: true





  def is_discounted?
    #!(price >= 10)  #FANCY WAY
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end