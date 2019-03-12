# メソッドの可変長引数

# 個数に制限のない引数を可変長引数という
# 自分で定義するメソッドで可変長引数を使いたい場合は、引数の手前に*をつける
def メソッド名(引数1, 引数2, *可変長引数)
  # メソッド処理
end


# 可変長引数は配列として受け取ることができる
def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end
greeting("田中さん") #=>田中さん、こんにちは！
greeting("田中さん", "鈴木さん") #=> 田中さんと鈴木さん、こんにちは！