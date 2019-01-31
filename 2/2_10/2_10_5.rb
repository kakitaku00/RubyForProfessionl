# 条件演算子(三項演算子)

# if文の場合
n = 11
if n > 10
  '10より大きい'
else
  '10以下'
end
#=> "10より大きい"

# 上記を条件演算子を使って書き直す
n = 11
n > 10 ? '10より大きい' ; '10以下'
#=> "10より大きい"

# 条件分岐した結果を変数に代入することもできる
n = 11
message = n > 10 ? '10より大きい' ; '10以下'
message #=> "10より大きい"