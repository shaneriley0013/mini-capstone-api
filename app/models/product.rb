class Product < ApplicationRecord

  def tax
    tax = price * 1.10
    return tax
  end





end
