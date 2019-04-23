class CashRegister
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount=0)
    @item=[]
    @discount=discount
    @total=0
  end

  def add_item(price, name, quantity=1)
    if quantity > 1
      i=0
      while i < quantity
        @item << name
        i+=1
      end
    else
      @item<<name
    end
    @total+=price*quantity
    @last_transaction=@total
    @total
  end

  def apply_discount
    if discount==0
      return"There is no discount to apply."
    end
    @total-=@total*@discount/100
    return"After the discount, the total comes to #{@total}."
  end
    
    
  end