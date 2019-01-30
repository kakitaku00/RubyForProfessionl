# case文

country = 'italy'
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'ciao'
else
  '???'
end
#=> 'ciao'

# when節に複数の値を指定することもできる
country = 'アメリカ'
case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'Hello'
when 'italy', 'イタリア'
  'ciao'
else
  '???'
end
#=> 'Hello'

# case文の結果を変数に入れることも可能
country = 'italy'
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
#=> 'ciao'

# when節の後ろににthenを入れ1行で処理を書くことができる(使用頻度は高くない)
country = 'italy'

case country
when 'japan' then 'こんにちは'
when 'us' then 'Hello'
when 'italy' then 'ciao'
else '???'
end
#=> "ciao"
