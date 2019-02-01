# !で終わるメソッド

# 慣習として「使用する差異は注意が必要」という意味を持つ
a = 'ruby'

# upcaseだと変数aの値は変化しない
a.upcase #=> "RUBY"
a #=> ruby

# upcase!だと変数aの値も大文字に変わる
a.upcae! #=> RUBY
a #=> RUBY

# 呼び出したオブジェクトの状態を変更してしまうことを破壊的メソッドと呼ぶ
# !で終わるメソッドを見かけたらどんな注意事項があるかしらべるようにする

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s) #=> "YBUR"
s #=> "YBUR"

メソッド名は?!で終えることができるが、変数名には使えないので注意
odd? = 1.odd?
#=> SyntaxError
upcase! = 'ruby'.upcase!
#=> SyntaxError