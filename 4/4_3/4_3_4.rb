# ブロック引数とブロック内の変数

number = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

# ブロック内の引数は自由に決められる

numbers.each do |i|
  sum += i
end

numbers.each do |nunber|
  sum += number
end

# ブロック引数を使わない場合は、ブロック引数自体を省略できる
numbers.each do
  sum += 1
end

# ブロック内にはRubyのコードを自由に書くことができる
numbers = [1, 2, 3, 4]
sum += 0
numbers.each do |n|
  sum_value = n.even??n * 10:n
  sum += sum_value
end
sum #=> 64

# ブロック外でsum_valueを参照するとエラーが発生する
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  # sum_valueはブロック内で初めて登場した変数なので、ブロック内のみ有効
  sum_value = n.even??n*10:n
  sum += sum_value
end
# ブロックの外に出ると、sum_valueは参照できない

# ブロックの外部で作成されたローカル変数はブロック内部でも参照できる
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even??n*10:n
  # sumはブロック外で作成されたので、ブロックの内部でも参照可能
  sum += sum_value
end

# ブロック引数の名前をブロック外部にある変数と同じ名前にすると、ブロック内部ではブロック引数の値が優先される
numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100
# ブロックの外にもsum_valueがあるが、ブロック内ではブロック引数のsum_valueが優先される
numbers.each do |sum_value|
  sum += sum_value
end
sum #=> 10

# 上記のようなコードは読み手を混乱させるので思わぬ不具合の原因になるので避ける