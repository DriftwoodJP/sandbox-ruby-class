require_relative './shain_factory'

shain_factory = ShainFactory.new

%w[Tanto Shunin Bucho Torishimariyaku].each do |yakushoku|
  shain = shain_factory.create(yakushoku, 100)
  puts shain.standup
  puts "私の給料は#{shain.calculate_salary}円です。"
end
