require 'pry'
class CashRegister
  attr_accessor :last_item, :last_price
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def discount
    @discount
  end


  def add_item(item, price, quantity=1)
    @last_item = item
    @last_price = (price * quantity)
    @total = @total + (price * quantity)
    quantity.times do
    @items << item
    end

  end

  def last_transaction
  end

  def apply_discount
    if discount != nil
      @total = (@total * ((100.0-@discount)/100.0)).to_i
      response = "After the discount, the total comes to $#{total}."
    else
      response = "There is no discount to apply."
    end
    response
  end

  def items
    @items
  end

  def void_last_transaction
    @items.delete(@last_transaction)
    @total = @total - @last_price
  end
end
