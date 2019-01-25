# メソッドの定義
# Rubyはdefを使ってメソッドを定義する

def add(a, b)
  a + b
end

add(1, 2) #=> 3

# メソッド名も変数名と同じルールで、小文字のスネークケースで記述する
def hello_world
  'Hello, world'
end

# メソッド名に数字を入れる
def hello_world_2
  'Hello, world'
end

# 数字から始まるメソッド名は使えない(エラーになる)
# def 2_hello_world
#   'Hello, world'
# end