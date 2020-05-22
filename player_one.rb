require 'pry'
class PlayerOne
  attr_reader :sign
  attr_accessor :name
  def initialize(name)
    @name = name
    @sign = "X"
  end
end
