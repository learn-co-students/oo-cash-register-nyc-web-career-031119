require 'pry'

class CashRegister

  attr_accessor :total, :last_item_price
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    until quantity == 0
      @items << item
      quantity -= 1
    end
    @last_item_price = price
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = total * (1 - (discount.to_f/100))
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= last_item_price
  end

end
