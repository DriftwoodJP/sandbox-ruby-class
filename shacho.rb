require_relative './shain'

shain = Shain.new
shain.yakushoku = Tanto.new
puts "担当の給与は#{shain.calculate_salary(100)}です。"
shain.gyoumu = TantoGyoumu.new
shain.up
puts "昇進して主任になると#{shain.calculate_salary(100)}です。"
shain.down
puts "降格すると#{shain.calculate_salary(100)}です。"
