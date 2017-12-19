require_relative './salary'

# Shain class for lesson 3.8
class Shain
  include Salary

  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end

  def standup
    puts '社員はとりあえず起立する'
  end
end
