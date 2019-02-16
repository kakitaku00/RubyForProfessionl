# map/collect

# mapメソッドは各要素にたいしてブロックを評価した結果を新しい配列にして返す
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10}
new_numbers #=> [10, 20, 30, 40, 50]

# mapメソッドの戻り値をそのまま新しい変数に入れる
new_numbers = numbers.map { |n| n * 10 }
new_numbers #=> [10, 20, 30, 40, 50]