require 'pry'
class CashRegister
  attr_accessor :total, :discount
  @@all = []
  def self.all
    @@all
  end

  def initialize(d=0)
    @total = 0
    @discount = d

  end

  def add_item(item, price, q=1)
    self.total += price * q
    q.times{|i| self.class.all << item}
    #self.class.all
    #binding.pry
  end

  def apply_discount
    discount = (((self.discount.to_f) / 100) *  @total).to_i
    new_total =  self.total -= discount
    if @discount != 0
      "After the discount, the total comes to $#{new_total}."
    else
      "There is no discount to apply."
    end
  end

  def items
   binding.pry

  end

end
