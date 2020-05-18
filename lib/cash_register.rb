class CashRegister
  attr_accessor :total, :title, :price, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    full_price = price * quantity
    @title = title
    @price = full_price
    @total += @price
  end

  def apply_discount
    

  end


end
