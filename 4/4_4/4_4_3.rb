# find/detect
# findメソッドはブロックの戻り値が真になった最初の要素を返す

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find{ |n| n.even? }
even_number #=> 2