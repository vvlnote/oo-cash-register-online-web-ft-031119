class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity=1)
    self.total += (price * quantity)
    quantity.times do |i|
      @items << item
    end
  end
  
  def apply_discount
    if self.discount != 0
      self.total -= (self.total * self.discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
end
