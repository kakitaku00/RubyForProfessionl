# 参照の概念を理解する

# Rubyの変数にはオブジェクトそのものではなく、オブジェクトへの参照が格納されている
# object_idメソッドを使用し、おなじidなら同じオブジェクトを参照している
# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
a.object_id #=> 70351845718180
p b.object_id #=> 70351845718160

# cにbを代入する。bとcはどちらも同じオブジェクト
c = b
c.object_id #=> 70351845718160

# メソッドの引数にcを渡す。引数として受け取ったdはb、cと同じオブジェクト
def m(d)
  d.object_id
end
m(c) #=> 70351845718160

# equal?メソッドを使っって同じオブジェクトかどうか確認しても良い
a.equal?(b) #=> false
b.equal?(c) #=> true


# 同じオブジェクトを参照している場合、オブジェクトの状態が変更されると、各変数に影響する
# b, cは同じオブジェクト、aは異なるオブジェクト
a = 'hello'
b = 'hello'
c = b
# 渡された文字列を破壊的に大文字にするメソッドを定義
def m!(d)
  d.upcase!
end

# cにm!メソッドを適用する
m!(c)

# b,cはいずれも大文字になる
b #=> "HELLO"
c #=> "HELLO"

# aは別オブジェクトなので大文字にならない
a #=> "hello"