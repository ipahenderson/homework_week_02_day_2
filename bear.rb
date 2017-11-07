class Bear

  attr_reader :bear_name, :stomach


  def initialize(bear_name)
    @bear_name = bear_name
    @stomach = []
  end

  def eat(river)
    eaten =  river.stock.pop
    @stomach << eaten
  end


  def roar
    return "RAWR!"
  end







end
