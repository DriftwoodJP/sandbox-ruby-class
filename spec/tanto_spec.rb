require 'rspec'
require_relative '../tanto'

describe Tanto do
  let(:tanto) { described_class.new(100) }

  example '担当の給料は基本給と一緒。基本給が100なら給料も100。' do
    expect(tanto.calculate_salary).to eq 100
  end

  example '担当は慌てて起立する' do
    expect(tanto.standup).to eq '担当は慌てて起立しました。'
  end
end
