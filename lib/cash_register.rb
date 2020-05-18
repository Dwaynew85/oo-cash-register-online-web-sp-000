class CashRegister
  attr_accessor :total, :title, :price, :discount, :last_transaction

  @@items = []

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
    @@items << @title
    @price = full_price
    @total += @price
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end



end
