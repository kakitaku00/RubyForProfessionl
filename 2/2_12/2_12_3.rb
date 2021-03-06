# 式(Expression)と文(Statement)

# 式 = 値を返し、結果を変数に代入できるもの
# 文 = 値を返さず、変数に代入しようとすると構文エラーになるものが文

# if文が値を返すので変数に代入できる
a =
  if true
    '真です'
  else
    '偽です'
  end

a #=> "真です"

# メソッド定義も実は値(シンボル)を返している
b = def foo; end
b #=> :foo

# ifもif文ではなく実はif式
# Rubyでは文のように見えるが実は式という要素が多いことを頭の片隅に入れておく
