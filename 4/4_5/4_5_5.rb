# 繰り返し処理を行う

# 範囲オブジェクトを配列に変換してから繰り返し処理を行う
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n}
sum #=> 10

# 範囲オブジェクトに対して直接eachメソッドを呼び出す
sum = 0
(1..4).each { |n| sum += n }
sum #=> 10

# stepメソッドを呼び出すと増やす間隔を指定できる
numbers = []
# 1から10まで2つ飛ばしで繰り返し処理を行う
(1..10).step(2) { |n| numbers << n }
numbers #=> [1, 3, 5, 7, 9]
