class CashRegister
  attr_accessor :discount, :item, :price, :total

  def initialize(discount=0)
    @total=0
    @discount=discount
    @item=[]
  end

  def add_item(price, items, quantity=1)
    @price=price
    @total+=price*quantity
    if quantity>1
      count=0
    while count<quantity
      @item<<items
      count+=1
    end
    else
      @item<<items
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
