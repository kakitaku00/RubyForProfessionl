# エイリアスメソッド

# Rubyには全く同じメソッドに複数の名前が付いている場合がよくある
# lengthもsizeも、どちらも文字数を返す
'hello'.length #=> 5
'hello'.size #=> 5

# 上記のように全く同じ実装で名前だけ異なるメソッドをエイリアスメソッドという