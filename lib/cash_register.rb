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
    if @discount > 0
      deduction = @total * @discount
      discount_price = @total -= deduction
      puts "After the discount, the total comes to $#{discount_price}"
    else
      puts "There is no discount to apply."
    end
  end
  
end
