# 文字列

# シングルクオートとダブルクオートの挙動の違い
# 改行文字(\n)を埋め込みたい場合はダブルクオートで噛む必要がある
puts "こんにちは\nさようなら"
#=> こんにちは
#   さようなら

# シングルクオートだとただの文字列になる
puts 'こんにちは\nさようなら'
#=> こんにちは\nさようなら

# ダブルクオートを使うと式展開が使用できる
name = 'Alice'
puts = "Hello, #{name}!" #=> Hello, Alice!

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です" #=> 10は16進数にするとaです

# シングルクオートの場合ただの文字列となる
name = 'Alice'
puts 'Hello, #{name}!' #=> Hello, #{name}!

# 式展開を使わずに+演算子で文字列連結することもできる。が式展開を使った方が読み書きしやすい
name = 'Alice'
puts 'Hello ' + name + '!' #=> Hello Alice!

# ダブルクオートを使う文字で改行文字や式展開を打ち消したい場合は手前にバックスラッシュをつける
puts "こんにちは\\nさようなら" #=> こんにちは\nさようなら
puts "Hello, \#{name}!" #=> Hello, #{name}!

puts 'He said, "Don\'t speak."' #=> He said, "Don't speak."
puts "He said, \"Don't speak.\"" #=> He said, "Don't speak."