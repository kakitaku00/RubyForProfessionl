# 値が連続する配列を作成する
(1..5).to_a #=> [1, 2, 3, 4, 5]
(1...5).to_a #=> [1, 2, 3, 4]

('a'..'e').to_a #=> ["a", "b", "c", "d", "e"]
('a'...'e').to_a #=> ["a", "b", "c", "d"]

('bad'..'bag').to_a #=> ["bad", "bae", "baf", "bag"]
('bad'...'bag').to_a #=> ["bad", "bae", "baf"]

# []の中に*と範囲オブジェクトを書いても同じように配列を作る事ができる
[*1..5] #=> [1, 2, 3, 4, 5]
[*1...5] #=> [1, 2, 3, 4]