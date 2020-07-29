class PlayerOne
  attr_reader :sign, :name
  def initialize(name)
    @name = name
    @sign = 'X'
  end

  def move(instance, num)
    index = num - 1
    instance.square[index] = sign
  end
end
