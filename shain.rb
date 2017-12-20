require_relative './gyoumu'

# Shain class for lesson 4.2
class Shain
  attr_accessor :gyoumu

  def initialize
    @gyoumu = Gyoumu.new
  end

  def work
    @gyoumu.standup
  end
end
