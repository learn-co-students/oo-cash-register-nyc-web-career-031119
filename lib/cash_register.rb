
class CashRegister
  attr_accessor :discount, :total, :items
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    def apply_discount
      if self.discount
        self.total -= self.total * self.discount / 100.00
        "After the discount, the total comes to $#{self.total.round}."
      else
        "There is no discount to apply."
      end
    end
  end


  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
      @total += price
    end
    @last_price = price
  end

  def void_last_transaction
    @items.pop
    @total -= @last_price
  end

end
