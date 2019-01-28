# ヒアドキュメント(行指向文字列リテラル)
# 文字列は途中で改行できる
puts "Line 1
Line 2"
#=> Line 1
# Line 2

# しかし複数行の場合はヒアドキュメント(行指向文字列リテラル)を使った方がスッキリかける
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a
#=> これはヒアドキュメントです。
# 複数行に渡る長い文字列を作成するのに便利です。

# ヒアドキュメントの識別子としてHTMLを使う場合
a = <<HTML
<div>
  <img src="sample.jpg">
</div>
HTML
puts a
#=> <div>
#   <img src="sample.jpg">
# </div>

# <<-TEXTのように-を入れると最後の識別子をインデントさせることができる
def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method
#=> これはヒアドキュメントです。
# <<-を使うと最後の識別子をインデントさせることができます。

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと内部文字列のインデント部分が無視されます
  TEXT
end
puts some_method

# ヒアドキュメントの中では式展開が有効
name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a
#=> ようこそ、Aliceさん！
# 以下のメッセージをご覧ください。

# 識別子をシングルクオートで囲むと式展開が無効になる
# ダブルクオートで囲んだ場合は式展開が有効になる(<<TEXTと一緒)
name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a
#=> ようこそ、#{name}さん！
# 以下のメッセージをご覧ください。

# <<識別子は1つの式として見なされるため、メソッドの引数として渡すこともできる
# prependは渡された文字列を先頭に追加するメソッド
a = 'Ruby'
a.prepend(<<TEXT)
JAVA
PHP
TEXT

puts a
#=> JAVA
# PHP
# Ruby

# upcaseは全て大文字にするメソッド
b = <<TEXT.upcase
Hello,
Good-bye,
TEXT

puts b
#=> HELLO,
# GOOD-BYE,



