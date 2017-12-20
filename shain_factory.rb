require_relative './shain'
require_relative './tanto'
require_relative './shunin'
require_relative './bucho'
require_relative './torishimariyaku'

# ShainFactory class for lesson 3.8
class ShainFactory
  def create(type, kihonkyu)
    eval "#{type}.new(#{kihonkyu})", binding, __FILE__, __LINE__
  end
end
