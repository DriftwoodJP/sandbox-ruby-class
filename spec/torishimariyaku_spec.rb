require 'rspec'
require_relative '../torishimariyaku.rb'

describe Torishimariyaku do
  let(:torishimariyaku) { Torishimariyaku.new(100) }

  example '取締役の給料は基本給の4倍+2。基本給が100なら給料は402。' do
    expect(torishimariyaku.calculate_salary).to eq 402
  end

  example '取締役はふんぞり返って立ち上がる' do
    expect(torishimariyaku.standup).to eq '取締役はふんぞり返って立ち上がりました。'
  end
end
