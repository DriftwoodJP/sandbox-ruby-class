# Shain class for lesson 4.8
class Shain
  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end

  def print_salary
    puts "私の給料は#{calc_salary}です。"
  end

  def calc_salary; end
end

class Tanto < Shain
  def calc_salary
    @kihonkyu
  end
end

class Shunin < Shain
  def calc_salary
    @kihonkyu * 2 + 1
  end
end

class Bucho < Shain
  def calc_salary
    @kihonkyu * 3
  end
end
