
class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end


  attr_accessor :total
  attr_accessor :discount
  attr_accessor :items
  attr_accessor :last_transaction

  def add_item(name, price, quantity = 1)
    self.total += (price * quantity)
    quantity.times do
      self.items << name
    end
    self.last_transaction = price
  end

  def apply_discount
    if self.discount != 0
      self.total = (total * (1-(self.discount*0.01))).round(0)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
