class CashRegister
  attr_accessor :discount, :item, :price, :total

  def initialize(discount=0)
    @total=0
    @discount=discount
    @item=[]
  end

  def add_item(price, item, quantity=1)
    self.total += price * quantity
    quantity.times { self.items << name }
    self.last_transaction = [name, price, quantity]
  end

  def apply_discount
    self.total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total = self.total * 8 / 10 }."
  end

  def void_last_transaction
   self.total -= self.last_transaction[1] * self.last_transaction[2]
   self.last_transaction[2].times do
   self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
  end

end
