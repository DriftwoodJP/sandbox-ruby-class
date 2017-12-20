require 'rspec'
require_relative '../shunin'

describe Shunin do
  let(:shunin) { described_class.new(100) }

  example '主任の給料は基本給の2倍+1。基本給が100なら給料は201。' do
    expect(shunin.calculate_salary).to eq 201
  end

  example '主任は素早く立ち上がる' do
    expect(shunin.standup).to eq '主任は素早く立ちました。'
  end
end
