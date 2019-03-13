class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quant=1)
    @total += price*quant
    quant.times { |n| @items << item } 
    @last_transaction = price*quant
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total *= (100-discount)/100.00
      "After the discount, the total comes to $#{@total.to_i}."
    end

  end

  def void_last_transaction
    @total -= @last_transaction 
    
  end

end
