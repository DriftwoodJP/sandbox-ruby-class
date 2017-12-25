# Yakushoku class for lesson 4.3
class Yakushoku
  def calculate_salary(kihonkyu)
    kihonkyu
  end

  def up; end

  def down; end
end

# Tanto class for lesson 4.3
class Tanto < Yakushoku
  def up
    Shunin.new
  end
end

# Shunin class for lesson 4.3
class Shunin < Yakushoku
  def calculate_salary(kihonkyu)
    kihonkyu * 2 + 1
  end

  def down
    Tanto.new
  end
end
