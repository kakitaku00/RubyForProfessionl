# 変数(ローカル変数)の宣言と代入
# 変数名 = 式や値

s = 'Hello'
n = 123 * 2

# 変数を宣言する目的だけ書くとエラーになる
# x #=> undefined local variable or method `x' for main:Object (NameError)

# xを宣言するには何かしらの値が必要
x = nil

# 変数名は慣習として小文字のスネークケース
special_price = 200

# 変数名はアルファベットの小文字かアンダースコア
_special_price = 200 # アンダースコアはあまり使われない

# 数字から始まる変数名は使えない
# 2_special_price = 300 #=> trailing `_' in number

# 一般的ではないがアルファベット以外を変数名にすることもできる
特別価格 = 200
p 特別価格 * 2 #=> 400


# 変数が特定の型に制限されることはない為同じ変数に文字列や数値を自由に代入することができる
# ただし良いコードではない
x = 'Hello'
x = 123
x = 'Goodbay'
x = 456


# 2つ以上の値を同時に代入することもできる
# 理解しずらいので特に理由がなければ避ける
a,b = 1,2
a #=> 1
b #=> 2

# 右辺の数が少ない場合はnilが入る
c,d = 10
c #=> 10
d #=> nil

# 右辺の数が多い場合ははみ出した値が切り捨てられる
e,f = 100, 200, 300
e #=> 100
f #=> 200


# 2つの変数に同じ値を代入する(なるべく使わないほうが良い)
a = b = 100
a #=> 100
b #=> 100