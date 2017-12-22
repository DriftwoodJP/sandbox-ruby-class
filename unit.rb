# Unit class for lesson 4.6
class Unit
  attr_accessor :name, :contacts

  def initialize(name, contacts)
    @name = name
    @contacts = contacts
  end

  def work
    puts '働きます！'
  end
end

# Shain class for lesson 4.6
class Shain < Unit
  def work
    puts '社員は働いています。'
  end
end

# Bumon class for lesson 4.6
class Bumon < Unit
  attr_accessor :units

  def initialize(name, contacts, units)
    super
    @units = units || []
  end

  def work
    puts 'チームワークを発揮します。'
  end
end
