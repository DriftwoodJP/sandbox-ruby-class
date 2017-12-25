# ShainFactory class for lesson 4.4
class ShainFactory
  def create(type, kihonkyu)
    shain = nil

    if type == 'Tanto'
      shain = Tanto.new(kihonkyu)
    elsif type == 'Shunin'
      shain = Shunin.new(kihonkyu)
    end

    shain
  end
end
