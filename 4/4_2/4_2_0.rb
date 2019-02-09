# 配列

# 空の配列を作成し、そのクラス名を確認する
[].class #=> Array

a = [1, 2, 3]

# 改行して書くこともできる
a = [
  1,
  2,
  3
]

# 配列は数値に限らずどんなオブジェクトでも格納出来る
a = ['apple', 'orange', 'melon']

# 異なるデータ型も格納できる
a = [1, 'apple', 2, 'orange']

# 配列の中に配列を含めることもできる
a = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]

a = [1, 2, 3]
# 1つ目の要素を取得
a[0] #=> 1

# 2つ目の要素を取得
a[1] #=> 2
s
# 3つ目の要素を取得
a[2] #=> 3

# 存在していない要素を指定してもエラーにはならない
a[100] #=> nil

# sizeメソッド(エイリアスはlength)を使用して配列の長さを取得できる
a.size #=> 3
a.length #=> 3