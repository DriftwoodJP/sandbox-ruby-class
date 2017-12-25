require_relative '../gyoumu'

describe Gyoumu do
  let(:gyoumu) { described_class.new }

  example '社員はとりあえず起立します' do
    expect(gyoumu.standup).to eq '社員はとりあえず起立する。'
  end

  describe TantoGyoumu do
    let(:gyoumu) { described_class.new }

    example '担当は慌てて起立します' do
      expect(gyoumu.standup).to eq '担当は慌てて起立しました。'
    end
  end

  describe ShuninGyoumu do
    let(:gyoumu) { described_class.new }

    example '主任は素早く起立します' do
      expect(gyoumu.standup).to eq '主任が素早く立ちました。'
    end
  end
end
