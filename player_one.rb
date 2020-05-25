class PlayerOne
  attr_reader :sign, :name
  def initialize(name)
    @name = name
    @sign = "X"
  end

  def move(instance,num)
    instance.square[instance.square.index(num)] = sign 
  end
end
