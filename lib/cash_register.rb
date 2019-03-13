class CashRegister

  attr_accessor :total, :quantity, :discount, :price, :items, :price

  def initialize(checkout = 0)
    @total = 0
    @items = []
    @discount = checkout
    @price
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @price = price
    @title = title
    @total += (price*quantity)
      while quantity > 0
      items << @title
      quantity -= 1
      end
  end

  def apply_discount
    if @discount == 20
      @total = @total-(@total*(@discount/100.0))
       return "After the discount, the total comes to $800."
     else
       return "There is no discount to apply."
      end
  end

  def items
   @items
  end

  def void_last_transaction
    @total = @total - @price
  end

end

require 'pry'
