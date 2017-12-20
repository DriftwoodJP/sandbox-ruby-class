require_relative '../shain_factory'

describe ShainFactory do
  let(:shain_factory) { described_class.new }

  example 'Tantoオブジェクトを生成しているかチェックする' do
    expect(shain_factory.create('Tanto', 100)).to be_an_instance_of Tanto
  end

  example 'Shuninオブジェクトを生成しているかチェックする' do
    expect(shain_factory.create('Shunin', 100)).to be_an_instance_of Shunin
  end

  example 'Buchoオブジェクトを生成しているかチェックする' do
    expect(shain_factory.create('Bucho', 100)).to be_an_instance_of Bucho
  end

  example 'Torishimariyakuオブジェクトを生成しているかチェックする' do
    expect(shain_factory.create('Torishimariyaku', 100)).to be_an_instance_of Torishimariyaku
  end
end
