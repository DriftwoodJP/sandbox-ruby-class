require 'rspec'
require_relative '../bucho'

describe Bucho do
  let(:bucho) { described_class.new(100) }

  example '部長の給料は基本給の3倍。基本給が100なら給料は300。' do
    expect(bucho.calculate_salary).to eq 300
  end

  example '部長はだるそうに立ち上がる' do
    expect(bucho.standup).to eq '部長はだるそうに立ちました。'
  end
end
