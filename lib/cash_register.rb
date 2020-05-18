class CashRegister
  attr_accessor :total, :title, :price

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    full_price = price * quantity
    @title = title
    @price = full_price
    @total + @price
  end


end
