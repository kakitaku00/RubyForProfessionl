# メソッド定義における引数の()

# 引数がない場合は()をつけない方が主流
def greeting
  'こんにちは'
end

# ()を省略できるが、引数がある場合は()をつけ ることのほうが多い
def greeting country
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end