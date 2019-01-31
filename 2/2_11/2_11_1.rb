# デフォルト値付きの引数

# Rubyではメソッドを呼び出す際に引数の過不足があるとエラーになる
def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# 引数が少ない
# greeting
#=> wrong number of arguments (given 0, expected 1) (ArgumentError)

# 引数がちょうど
greeting('us') #=> "hello"

# 引数が多い
# greeting('us', 'japan')
#=> wrong number of arguments (given 2, expected 1) (ArgumentError)


# ただし引数を柔軟に扱える方法がいくつかある
# デフォルト引数
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greeting #=> "こんにちは"
greeting('us') #=> "hello"

# デフォルト引数ありなしを混在させることも可能
def default_args(a,b,c = 0,d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

default_args(1, 2)       #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)    #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4) #=> "a=1, b=2, c=4, d=4"

# デフォルト値は固定の値だけでなく、動的に変わる値やほかのメソッドの戻り値を指定したりもできる
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=> time: 2019-01-31 10:28:39 +0900, message: BAR