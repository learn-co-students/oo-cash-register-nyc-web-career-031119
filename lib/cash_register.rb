
require 'pry'
class CashRegister

  attr_accessor :total, :discount, :cart, :price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @cart = []
    @price = 0
  end

  def add_item(item, price, quantity = 1)
  @total += price*quantity
    while quantity > 0
      @cart << item
      quantity-=1
    end
    @price = price
  end

  def apply_discount
    if !@discount
      "There is no discount to apply."
    else
    @total = @total*(1-(@discount/100.to_f))
    "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @price
  end


end
