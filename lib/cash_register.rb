
class CashRegister
  def initialize(total = 0)
    @total = total
    @discount = 20
  end


  attr_accessor :total
  attr_accessor :discount

  def add_item(name, price, quantity = 1)
    self.total += (price * quantity)
  end

  def apply_discount
    self.total = (self.total * 0.2).round(0)
    puts "After the discount, the total comes to $#{self.total}."
  end






end
