require 'pry'

class CashRegister
attr_accessor :total, :discount, :quant, :price

  def initialize (call = 1)
    @total = 0
    @discount = call
    @cart = []
  end

  def add_item(title, price, quant = 1)
    self.total = self.total + (price * quant)
    while quant > 0
    @cart << title
    quant -=1
    end
    @price = price
  end

  def apply_discount
      if discount == 1
       return"There is no discount to apply."
     else
    @total = total - self.total * (discount / 100.00)
# binding.pry
     "After the discount, the total comes to $#{@total.round}."
   end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total = @total - @price
  end
end
