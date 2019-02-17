# select/find_all/reject
# selectメソッドは各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返すメソッド

numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select{ |n| n.even? }
even_numbers #=> [2, 4]

# rejectメソッドはselectメソッドの反対
# ブロックの戻り値が真になった要素を除外する
non_multiples_of_three = numbers.reject{ |n| n % 3 == 0 }
non_multiples_of_three #=> [1, 2, 4, 5]