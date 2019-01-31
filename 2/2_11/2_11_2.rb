# ?で終わるメソッド

# ?で終わるメソッドは慣習として真偽値を返す
# 空文字列であればtrue、 そうでなければfalse
"".empty? #=> true
"abc".empty? #=> false

# 引数の文字列が含まれていればtrue. そうでなければfalse
"watch".include?("at") #=> true
"watch".include?("in") #=> false

# 奇数ならtrue 偶数ならfalse
1.odd? #=> true
2.odd? #=> false

# 偶数ならtrue、奇数ならfalse
1.even? #=> false
2.even? #=> treu

# オブジェクトがnilであればtrue そうでなければfalse
nil.nil? #=> true
'abc'.nil? #=> false
1.nil? #=> false

# ?で終わるメソッドは自分で定義できる
# 真偽値を返す目的のメソッドの場合?で終わらせる方がよい
# 3の倍数ならtrue、それ以外はfalse
def multiple_of_three(n)
  n % 3 == 0
end
multiple_of_three(4) #=> false
multiple_of_three(5) #=> false
multiple_of_three(6) #=> true
