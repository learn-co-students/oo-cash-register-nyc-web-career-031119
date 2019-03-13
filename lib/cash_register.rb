require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item_list, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity

    i = quantity
    while i > 0
      @item_list << title
      i -= 1
    end
  end

  def apply_discount
    if discount == 0
       "There is no discount to apply."
    else
      @total  *= (1 - (discount / 100.00))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
