# Rubyの真偽値

# falseまたはnilであれば偽
# それ以外は真
# nilも偽として扱われる点に注意

# 真で扱われる者
# trueそのもの
true
# 全ての数値
1
0
-1

# 全ての文字列
'true'
'false'
''

# データのある/なしで処理を変えたい場合、
# 素直にnilかどうかをチェックすると以下のようなコードとなる
data = find_data
if data != nil
  'データがあります'
else
  'データはありません'
end
# しかしRubyの場合falseとnil以外は全て真なので次のようにかける
data = find_data
if data
  'データがあります'
else
  'データはありません'
end