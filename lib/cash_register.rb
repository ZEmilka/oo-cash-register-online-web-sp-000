class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount=0)
    @item=[]
    @discount=discount
    @total=0
  end

  def add_item(price, name, quantity=1)
    self.total += price * quantity
    quantity.times { self.items << name }
    self.last_transaction = [name, price, quantity]
  end

  def apply_discount
    if discount==0
      return"There is no discount to apply."
    end
    @total-=@total*@discount/100
    return"After the discount, the total comes to #{@total}."
  end

  def void_last_transaction
   self.total -= self.last_transaction[1] * self.last_transaction[2]
   self.last_transaction[2].times do
     self.items.delete_at(self.items.index(self.last_transaction[0]) || self.items.count)
  end

end
