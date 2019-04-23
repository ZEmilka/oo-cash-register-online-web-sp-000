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


  end
