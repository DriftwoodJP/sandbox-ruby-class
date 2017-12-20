require_relative './shain'

shain = Shain.new
puts shain.work
shain.gyoumu = TantoGyoumu.new
puts shain.work
shain.gyoumu = ShuninGyoumu.new
puts shain.work
