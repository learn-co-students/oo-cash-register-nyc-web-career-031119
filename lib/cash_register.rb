require 'pry'
class CashRegister

  attr_accessor :discount, :total, :item, :last_price

  def initialize(discount = 0)
    @item = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, number = 1)
    self.total += number*price
    number.times do
      @item << title
      @last_price = number*price
    end
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @last_price
  end
end
