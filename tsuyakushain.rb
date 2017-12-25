require_relative './shain'
require_relative './hakenmoto/hakenshain'

# Ukeireshain class for lesson 4.5.4
class Tsuyakushain < Shain
  def standup
    haken = Hakenshain.new
    haken.kiritsu
  end
end
