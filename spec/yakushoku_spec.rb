require_relative '../yakushoku'

describe Yakushoku do
  let(:yakushoku) { described_class.new }

  example '社員のベース給与は基本給と一緒。基本給が100なら給料も100。' do
    expect(yakushoku.calculate_salary(100)).to eq 100
  end

  describe Tanto do
    let(:yakushoku) { described_class.new }

    example '担当は新入社員なので給与は基本給と一緒。基本給が100なら給料も100。' do
      expect(yakushoku.calculate_salary(100)).to eq 100
    end

    example '役職があがると、主任と同じく基本給の2倍+1。' do
      expect(yakushoku.up.calculate_salary(100)).to eq 201
    end
  end

  describe Shunin do
    let(:yakushoku) { described_class.new }

    example '主任給与は基本給の2倍+1。基本給が100なら給料も201。' do
      expect(yakushoku.calculate_salary(100)).to eq 201
    end

    example '役職が下がると、担当と同じく基本給と一緒' do
      expect(yakushoku.down.calculate_salary(100)).to eq 100
    end
  end
end
