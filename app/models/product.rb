class Product < ApplicationRecord

def is_discounted?
  
  if price <= 10
    return true
  else
    return false
  end

  def tax
    tax = price * 0.09
  end
  
  def total
    price + tax
  end

end
