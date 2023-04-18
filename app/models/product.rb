class Product < ApplicationRecord
  #belongs_to :supplier
  has_many :images
  has_many :orders

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { in: 10..500 }
##### NEED TO ADD INVETORY VALIDATION?




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

  def supplier
    Supplier.find_by(id: foreign_id)
  end


end