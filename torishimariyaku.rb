require_relative './shain'

# Shain class for lesson 3.8
class Torishimariyaku < Shain
  def standup
    '取締役はふんぞり返って立ち上がりました。'
  end

  def kihon
    @kihonkyu * 4
  end

  def teate
    2
  end
end
