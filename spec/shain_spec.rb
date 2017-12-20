require_relative '../shain'

describe Shain do
  let(:shain) { described_class.new }

  example '社員はとりあえず起立します' do
    expect(shain.work).to eq '社員はとりあえず起立する。'
  end

  example '担当は慌てて起立します' do
    shain.gyoumu = TantoGyoumu.new
    expect(shain.work).to eq '担当は慌てて起立しました。'
  end

  example '主任は素早く起立します' do
    shain.gyoumu = ShuninGyoumu.new
    expect(shain.work).to eq '主任が素早く立ちました。'
  end
end
