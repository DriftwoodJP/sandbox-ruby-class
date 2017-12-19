require_relative './shain'

# Shain class for lesson 3.8
class Bucho < Shain
  def standup
    '部長はだるそうに立ちました。'
  end

  def kihon
    @kihonkyu * 3
  end
end
