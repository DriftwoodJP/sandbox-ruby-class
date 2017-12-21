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

  example '社員のベース給与は基本給と一緒。基本給が100なら給料も100。' do
    expect(shain.calculate_salary(100)).to eq 100
  end

  context '役職が担当の場合' do
    before { shain.yakushoku = Tanto.new }

    example '役職が担当だと、給与は基本給と一緒。' do
      expect(shain.calculate_salary(100)).to eq 100
    end

    example '昇進すると、主任と同じく基本給の2倍+1。' do
      expect(shain.up.calculate_salary(100)).to eq 201
    end
  end

  context '役職が主任の場合' do
    before { shain.yakushoku = Shunin.new }

    example '役職が主任だと、給与は基本給の2倍+1。' do
      expect(shain.calculate_salary(100)).to eq 201
    end

    example '降格すると、担当と同じく基本給と一緒。' do
      expect(shain.down.calculate_salary(100)).to eq 100
    end
  end
end
