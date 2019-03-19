require 'pry'
class CashRegister
attr_accessor :total, :discount, :quantity, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @cart = []
    @price = 0
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    while quantity > 0
    @cart << item
    quantity += 1
    end
    @price = price
  end

  def apply_discount
    if @discount > 0
      @discount = 1-@discount/100.to_f
      @total = @total*@discount
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
