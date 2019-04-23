class CashRegister
  attr_accessor :items, :price, :discount, :total

  def initialize(discount=0)
    @total=0
    @items=[]
    @discount=discount
  end

  def add_item(name, price, quantity=1)
    if quantity>1
      count=0
      while count<quantity
        @items<<name
        count+=1
      end
    else
      @items<<name
    end
    @total += price * quantity
    @transaction=@total
    @total
  end

  def apply_discount
    if @discount>0
      @off=(price * discount)/100
      @total -= @off
      return"After the discount, the total comes to $#{@total}."
    else
      return"There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= price
  end

end
