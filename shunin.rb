require_relative './shain'

# Shain class for lesson 3.8
class Shunin < Shain
  def standup
    '主任は素早く立ちました。'
  end

  def kihon
    @kihonkyu * 2
  end

  def teate
    1
  end
end
