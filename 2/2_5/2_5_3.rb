# if文
# if 条件A
#   # 条件Aが真だったときの処理
# elsif 条件B
#   # 条件Bが真だったときの処理
# elsif 条件C
#   # 条件Cが真だったときの処理
# else
#   # それ以外の条件の処理処理
# end

# 与えられた数値が10より大きいかどうかで処理を帰る場合
n = 11
if n > 10
  puts '10よりおおきい'
else
  puts '10以下'
end
#=> 10より大きい

# 国によって変えたい場合
country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end
# => 'ciao'

# Rubyのif文は最後に評価された式を戻して返す
country = 'italy'
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'italy'
  'ciao'
else
  '???'
end
# => 'ciao'

# if文が戻り値を返すという性質を利用し、次のようにif文の戻り値を変数に代入することもできる
country = 'italy'
# if文の戻り値を変数に代入する
greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end

greeting #=> "ciao"

# if文は襲職し修飾子として文の後ろにおくことができる(後置ifと呼ばれることもある)
point = 7
day = 1
# 1日であればポイント5倍
if day == 1
  point * 5
end
point #=> 35
# 上記のコードを修飾子として使う
point * 5 if day == 1
point #=> 35

# ifとelseの後ろにthenを入れると1行に押し込めることもできる
country = 'italy'
if country == 'japan' then 'こんにちは'
elsif country == 'us' then 'Hello'
elsif country == 'italy' then 'ciao'
else '???'
end
# => 'ciao'