# 文の区切り
# 改行が文の区切りとなる

# 改行ごとにメソッドが実行される
1.to_s #=> "1"
nil.to_s #=> ""
10.to_s(16) #=> "a"

# セミコロンで明示的に文の区切りを指定することもできる(使用頻度は多くない)
1.to_s;nil.to_s;10.to_s(16)

# 文が続く際は改行することもできる
# ()が閉じられるまで改行してもエラーにならない
10.to_s(
  16
) #=> "a"
# ()がない場合は別の文とみなされる
10.to_s #=> "10"
16 #=> 16
# バックスラッシュを使うと文がまだ続くことを明示的に示すことができる(使用頻度低)
10.to_s\
16 #=> "a"