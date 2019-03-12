require 'pry'
class CashRegister
  attr_accessor :total
  attr_reader :cash_register_with_discount, :discount

  def initialize(employee = nil)
    @total = 0
    @discount = 0
    @items = []
    if employee != nil
      @discount = 20
    end
  end

  def add_item(item, price, quantity = 1)
    i = 0
    @price = price
    sub_total = price * quantity
    @total += sub_total
    while i < quantity
      @items << item
      i+=1
    end
  end

  def apply_discount
    perc = discount / 100.0
    disc_total = @total * perc

    @total -= disc_total.round
    if discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @price
  end
  

end
