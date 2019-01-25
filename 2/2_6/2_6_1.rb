# メソッドの戻り値
# 戻り値に関する情報はメソッド定義に出てきません
# 最後に評価された式がメソッドの戻り値になるのが特徴(retrunのようなキーワードは不要)

def add(a, b)
  # returnも使えるが、使わない方が主流
  return a + b
end
add(a, b) #=> 3

# 多言語経験者だとreturnを使わずに書くコードには違和感があるかもしれない
def greeting(country)
  # "こんにちは"または"hello"がメソッドの戻り値になる
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting('japan') #=> "こんにちは"
greeting('us') #=> "hello"

# returnはメソッドを途中で脱出する場合に使われることが多い
def greeting(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # (nil?はオブジェクトがnilの場合にtrueを返すメソッド)
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greeting(nil) #=> "countryを入力してください"
greeting('japan') #=> "こんにちは"