# case文で使う

def charge(age)
  case age
  # 0才から5才までの場合
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end
charge(3) #=> 0
charge(12) #=> 300
charge(16) #=> 600
charge(25) #=> 1000