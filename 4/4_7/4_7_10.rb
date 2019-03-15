#  %記法で文字列の配列を簡潔に作る

# []で文字列の配列を作成する
['apple', 'melon', 'orange'] #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する (!で囲む場合)
%w!apple melon orange! #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する (丸カッコで囲む場合)
%w(apple melon orange) #=> ["apple", "melon", "orange"]

# 空白文字(スペースや改行)が連続した場合も1つの区切り文字と見なされる
%w(
  apple
  melon
  orange
)
#=> ["apple", "melon", "orange"]

# 値にスペースを含めたい場合はバックスラッシュでエスケープする
%w(big\ apple small\ melon orange) #=> ["big apple", "small melon", "orange"]

# 式展開や改行文字(\n)タブ文字(\t)などを含めたい場合は大文字の%Wを使う
prefix ="this is"
%W(#{prefix}\ an\ apple small\nmelon orange) #=> ["this is an apple", "small\nmelon", "orange"]