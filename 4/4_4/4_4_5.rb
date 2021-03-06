# &とシンボルを使ってもっと簡潔に書く

# このコードは、
['ruby', 'java', 'peal'].map{ |s| s.upcase } #=> ["RUBY", "JAVA", "PEAL"]
# こう書き換えられる
['ruby', 'java', 'peal'].map(&:upcase) #=> ["RUBY", "JAVA", "PEAL"]

# このコードは、
[1, 2, 3, 4, 5, 6].select{ |n| n.odd? } #=> [1, 3, 5]
# こう書き換えられる
[1, 2, 3, 4, 5, 6].select{&:odd?} #=> [1, 3, 5]

# メソッドにブロックを渡す代わりに&:メソッド名という引数をわたす
# この書き方は以下の条件が揃った時に使用できる
# 1.ブロックの引数が1つだけ
# 2.ブロックの中で呼び出すメソッドに引数がない
# 3.ブロックの中では、ブロック引数に対してメソッドを1回呼び出す以外の処理がない

# 以下のコードは&:メソッド名の書き方は使用できない
# ブロックの中でメソッドではなく演算子を使っている
[1, 2, 3, 4, 5, 6].select{ |n| n % 3 == 0 }
# ブロック内で引数を渡している
[9, 10, 11, 12].map { |n| n.to_s(16) }
# ブロックの中で複数の文を実行している
[1, 2, 3, 4].map do |n|
  m = n * 4
  m.to_s
end