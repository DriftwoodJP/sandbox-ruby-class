require_relative './gyoumu'
require_relative './yakushoku'

# Shain class for lesson 4.3
class Shain
  attr_accessor :gyoumu, :yakushoku

  def initialize
    @gyoumu = Gyoumu.new
    @yakushoku = Yakushoku.new
  end

  def work
    @gyoumu.standup
  end

  def calculate_salary(kihonkyu)
    @yakushoku.calculate_salary(kihonkyu)
  end

  def up
    @yakushoku = @yakushoku.up
  end

  def down
    @yakushoku = @yakushoku.down
  end
end
