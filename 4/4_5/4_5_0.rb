# 範囲(Range)

# Rubyには「AからB』までといった範囲オブジェクトが存在する
1..5 # 最後の値を含む
1...5 # 最後の値を含まない

(1..5).class #=> Range
(1...5).class #=> Range

# Rangeを変数に格納せず呼び出す際は()で囲まないとエラーとなる
1..5.include?(1) #=> NoMethodError
(1..5).include?(1) #=> true