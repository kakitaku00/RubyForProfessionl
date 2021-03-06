# その他、文字列作成のいろいろ

# 数値を文字列に変換する
123.to_s #=> "123"

# 配列を連結して1つの文字列にする
[10, 20, 30].join #=> "102030"

# *演算子をつかって文字列を繰り返す
'Hi!' * 10 #=> "Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!"

# String.newを使って新しい文字列を作る(あまり使わない)
String.new('hello') #=> 'hello'