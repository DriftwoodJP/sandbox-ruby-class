# Gyoumu class for lesson 4.2
class Gyoumu
  def standup
    '社員はとりあえず起立する。'
  end
end

# TantoGyoumu class for lesson 4.2
class TantoGyoumu < Gyoumu
  def standup
    '担当は慌てて起立しました。'
  end
end

# ShuninGyoumu class for lesson 4.2
class ShuninGyoumu < Gyoumu
  def standup
    '主任が素早く立ちました。'
  end
end
