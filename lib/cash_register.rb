class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @items << item
    @total += price * quantity
  end

  def apply_discount
    if discount != 0
    @total * (1 - @discount)
    "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end
  end

  def total
    @total
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
